#include <iostream>
#include <string>
#include <stdio.h>
#include <ros/ros.h>
#include <boost/lexical_cast.hpp>
#include <serial/serial.h>
#include "sensor_synch_drivers/FeuerWeRRImuMsg.h"
#include "sensor_msgs/TimeReference.h"
#include "std_srvs/Empty.h"



#define DEG2RAD M_PI/180.0
#define RAD2DEG 180.0/M_PI

#ifndef M_PI
#define M_PI 3.1415926535
#endif

bool sensorsReady;


namespace sensor_synch_node
{


typedef struct{
  double s[3];
  double o[3];
  double T[9];

}Tcalib;


Tcalib b2calib_imu_accel = {1.0016,1.0012,1.0014,0.0035,-0.0017,-0.00025824,0.9999, 0.0073, 0.0050, -0.0087, 0.9995, -0.0022, -0.0070, 0.0026, 1.0003};
Tcalib b2calib_ma351accel = {1.0025,-1.0025,-1.0025,0.00041620,-0.00015704,0.0012,0.9999, -0.0025, -0.0041, 0.0020, 1.0001, -0.0028, 0.0015, 0.0026, 0.9998};
Tcalib b2calib_imugyro = {1.0005,1.0007,1.0000,0.1464,-0.0321,-0.1022,0.9997, -0.00085, 0.0053, 0.0075, 0.9997, 0.0034, -0.0053, 0.0034, 0.9998};
Tcalib b2calib_mag = {44.2398,45.4452,43.1704,-10.4432,12.4041,-89.1309,1,0,0,0,1,0,0,0,1};


typedef struct __attribute__((__packed__))
{
  uint8_t Frame1;
  uint8_t Frame2;
  uint8_t Frame3;
  uint8_t Frame4;

  int16_t mg362_accx_g;
  int16_t mg362_accy_g;
  int16_t mg362_accz_g;

  int16_t mg362_wx_deg;
  int16_t mg362_wy_deg;
  int16_t mg362_wz_deg;

  int32_t acc351_accx_g;
  int32_t acc351_accy_g;
  int32_t acc351_accz_g;

  int16_t magX_uT;
  int16_t magY_uT;
  int16_t magZ_uT;

  uint8_t synchPort1;
  uint8_t synchPort2;
  uint8_t synchPort3;
  uint8_t synchPort4;


}TSensorData;

typedef union
{
    TSensorData sensordata;
    uint8_t bytes[38];

}U_ReceiveBuffer;




class FeuerwerrSensor
{
public:
    explicit FeuerwerrSensor(ros::NodeHandle& node_handle);
    ~FeuerwerrSensor();

    void connect(const char* device);
    void disconnect();
    bool connetecd();
    void startBurst();
    void stopBurst();
    bool findandConnectDevice();
    bool checkAlive();
    void sendAcknowledge();
    void readData(U_ReceiveBuffer* datain);
    sensor_synch_drivers::FeuerWeRRImuMsg getNodeData(U_ReceiveBuffer datain);
    void sendCmd(uint8_t reg, uint8_t write_flag);
    void readFirmware(void);
    bool checknCallSyncServices(uint8_t syncport_data, uint8_t synchport);
    double gettime_stamp();
    void cleartime_stamp();
    void onRadarFlag(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res);
    void onIRFlag(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res);
    bool allSensorsReady(void);
    void softReset(void);
    double calib_data(double data, double s, double o, double *T);

    void set_TriggerStatus(bool newStatus);

    bool get_TriggerStatus();



protected:

    ros::NodeHandle m_node;
    serial::Serial m_ser;
    double time_stamp;
    bool last_syncport_status[4];
    bool trigger_status;

};





FeuerwerrSensor::FeuerwerrSensor(ros::NodeHandle& node_handle)
    : m_node(node_handle)
{
    time_stamp = 0;
    last_syncport_status[0] = true;
    last_syncport_status[1] = true;
    last_syncport_status[2] = false;
    last_syncport_status[3] = true;
    trigger_status = false;

}


FeuerwerrSensor::~FeuerwerrSensor()
{
    disconnect();

}


void FeuerwerrSensor::cleartime_stamp()
{
  time_stamp = 0.0;
}

void FeuerwerrSensor::set_TriggerStatus(bool newStatus)
{
  trigger_status = newStatus;
}

bool FeuerwerrSensor::get_TriggerStatus()
{
  return trigger_status;
}

double FeuerwerrSensor::calib_data(double data, double s, double o, double *T)
{
  double temp1,temp2;
  double data_out;
  temp1 =  data * T[0] + data*T[1] + data*T[2];
  data_out = (temp1 - o)/s;

  return data_out;

}


double FeuerwerrSensor::gettime_stamp()
{
  return time_stamp;

}


void FeuerwerrSensor::sendCmd(uint8_t reg, uint8_t write_flag)
{
  if(m_ser.isOpen())
  {
    std::vector<uint8_t> data_out;
    data_out.push_back(0x02);
    if (write_flag)
    {
      data_out.push_back(0x06);
    }
    else
    {
      data_out.push_back(0x04);
    }
    data_out.push_back(reg);
    data_out.push_back(0x03);
    m_ser.write(data_out);
  }

}

void FeuerwerrSensor::readFirmware(void)
{
  if(m_ser.isOpen())
  {
    std::vector<uint8_t> data_in;
    m_ser.read(data_in,72);
    std::stringstream str_firmware;
    std::copy(data_in.begin(), data_in.end(), std::ostream_iterator<uint8_t>(str_firmware, " "));
    ROS_INFO_STREAM("Firmware: " << str_firmware.str().c_str());
    ROS_INFO_STREAM("Firmware Read End: ");

  }
  else
  {
    ROS_ERROR_STREAM("Couldn't Read Firmware");
  }


}


void FeuerwerrSensor::connect(const char* device)
{
    // Query for serial configuration
    std::string port;
    int32_t baud;
    ros::param::param<std::string>("~port", port, device);
    ros::param::param<int32_t>("~baud", baud, 460800);
    ROS_INFO_STREAM("Attempting to connect to FeuerWeRR Sensorboard on " << port);

    try
    {
        m_ser.setPort(port);
        m_ser.setBaudrate(baud);
        serial::Timeout to_normal = serial::Timeout(200, 1000, 1, 1000, 1);
        serial::Timeout to_fast = serial::Timeout(2000, 1000, 1, 1000, 1);
        m_ser.setTimeout(to_fast);
        m_ser.open();
        m_ser.setTimeout(to_normal);




    }
    catch (serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port " << port);
        return;
    }

}

void FeuerwerrSensor::disconnect()
{
    m_ser.close();
}

bool FeuerwerrSensor::connetecd()
{

    return m_ser.isOpen();
}

void FeuerwerrSensor::startBurst()
{
    if (connetecd())
    {
        std::vector<uint8_t> data_out;
        data_out.push_back(0x02);
        data_out.push_back(0x06);
        data_out.push_back(0x10);
        data_out.push_back(0x03);
        m_ser.write(data_out);
    }
}

void FeuerwerrSensor::stopBurst()
{
    if (connetecd())
    {
        std::vector<uint8_t> data_out;
        data_out.push_back(0x02);
        data_out.push_back(0x06);
        data_out.push_back(0x11);
        data_out.push_back(0x03);
        m_ser.write(data_out);
    }
}


void FeuerwerrSensor::sendAcknowledge(void)
{
  if (connetecd())
  {
      std::vector<uint8_t> data_out;
      data_out.push_back(0xAA);
      m_ser.write(data_out);
  }
}

void FeuerwerrSensor::softReset()
{
  if (connetecd())
  {
      std::vector<uint8_t> data_out;
      data_out.push_back(0x02);
      data_out.push_back(0x06);
      data_out.push_back(0x91);
      data_out.push_back(0x03);
      m_ser.write(data_out);
  }
}


void FeuerwerrSensor::readData(U_ReceiveBuffer *datain)
{
   m_ser.read(datain->bytes,sizeof(TSensorData));
   time_stamp = time_stamp + 0.005;
}


sensor_synch_drivers::FeuerWeRRImuMsg FeuerwerrSensor::getNodeData(U_ReceiveBuffer datain)
{
  sensor_synch_drivers::FeuerWeRRImuMsg node_data;

  if (datain.sensordata.Frame1 != 0xAA)
  {
    ROS_ERROR("Frame ERROR!");
  }

  node_data.imu_angular_velocity.x = (double)(datain.sensordata.mg362_wy_deg) * 0.0075 * DEG2RAD;
  node_data.imu_angular_velocity.y = -(double)(datain.sensordata.mg362_wx_deg) * 0.0075 * DEG2RAD;
  node_data.imu_angular_velocity.z = (double)(datain.sensordata.mg362_wz_deg) * 0.0075 * DEG2RAD;

  node_data.imu_angular_velocity.x = calib_data(node_data.imu_angular_velocity.x,
                                                   b2calib_imugyro.s[0],
                                                   b2calib_imugyro.o[0],
                                                   &(b2calib_imugyro.T[0]));

  node_data.imu_angular_velocity.y = calib_data(node_data.imu_angular_velocity.y,
                                                   b2calib_imugyro.s[1],
                                                   b2calib_imugyro.o[1],
                                                   &(b2calib_imugyro.T[3]));
  node_data.imu_angular_velocity.z = calib_data(node_data.imu_angular_velocity.z,
                                                   b2calib_imugyro.s[2],
                                                   b2calib_imugyro.o[2],
                                                   &(b2calib_imugyro.T[6]));

  node_data.imu_linear_acceleration.x = (double)(datain.sensordata.mg362_accy_g) * 0.000125;
  node_data.imu_linear_acceleration.y = -(double)(datain.sensordata.mg362_accx_g) * 0.000125;
  node_data.imu_linear_acceleration.z = (double)(datain.sensordata.mg362_accz_g) * 0.000125;

  node_data.imu_linear_acceleration.x = calib_data(node_data.imu_linear_acceleration.x,
                                                   b2calib_imu_accel.s[0],
                                                   b2calib_imu_accel.o[0],
                                                   &(b2calib_imu_accel.T[0]));

  node_data.imu_linear_acceleration.y = calib_data(node_data.imu_linear_acceleration.y,
                                                   b2calib_imu_accel.s[1],
                                                   b2calib_imu_accel.o[1],
                                                   &(b2calib_imu_accel.T[3]));
  node_data.imu_linear_acceleration.z = calib_data(node_data.imu_linear_acceleration.z,
                                                   b2calib_imu_accel.s[2],
                                                   b2calib_imu_accel.o[2],
                                                   &(b2calib_imu_accel.T[6]));


  node_data.ma351_linear_acceleration.x = (double)(datain.sensordata.acc351_accy_g) / 16777216;
  node_data.ma351_linear_acceleration.y = -(double)(datain.sensordata.acc351_accx_g) / 16777216;
  node_data.ma351_linear_acceleration.z = (double)(datain.sensordata.acc351_accz_g) / 16777216;

  node_data.magnetometer.x = (double)(datain.sensordata.magX_uT);
  node_data.magnetometer.y = (double)(datain.sensordata.magY_uT);
  node_data.magnetometer.z = (double)(datain.sensordata.magZ_uT);


  node_data.ma351_linear_acceleration.x = calib_data(node_data.ma351_linear_acceleration.x,
                                                   b2calib_ma351accel.s[0],
                                                   b2calib_ma351accel.o[0],
                                                   &(b2calib_ma351accel.T[0]));

  node_data.ma351_linear_acceleration.y = calib_data(node_data.ma351_linear_acceleration.y,
                                                   b2calib_ma351accel.s[1],
                                                   b2calib_ma351accel.o[1],
                                                   &(b2calib_ma351accel.T[3]));
  node_data.ma351_linear_acceleration.z = calib_data(node_data.ma351_linear_acceleration.z,
                                                   b2calib_ma351accel.s[2],
                                                   b2calib_ma351accel.o[2],
                                                   &(b2calib_ma351accel.T[6]));

  node_data.magnetometer.x = calib_data(node_data.magnetometer.x,
                                                   b2calib_mag.s[0],
                                                   b2calib_mag.o[0],
                                                   &(b2calib_mag.T[0]));
  node_data.magnetometer.y = calib_data(node_data.magnetometer.y,
                                                   b2calib_mag.s[1],
                                                   b2calib_mag.o[1],
                                                   &(b2calib_mag.T[3]));

  node_data.magnetometer.z = calib_data(node_data.magnetometer.z,
                                                   b2calib_mag.s[2],
                                                   b2calib_mag.o[2],
                                                   &(b2calib_mag.T[6]));


  node_data.feuertime = ros::Time(time_stamp);

  node_data.header.stamp = ros::Time::now();


  //TODO: Hier müssen noch restliche Acceldaten hinzugefügt werden sowie Kalibration der Sensordaten


  return node_data;
}

bool FeuerwerrSensor::checknCallSyncServices(uint8_t syncport_data, uint8_t synchport)
{

  if(!last_syncport_status[synchport-1])
  {
    if (syncport_data)
    {
      //  ROS_INFO("SynchTime: %f", time_stamp);
        //Publish the synch event topic here
       last_syncport_status[synchport-1] = (bool)syncport_data;
       return true;
    }
  }
  last_syncport_status[synchport-1] = (bool)syncport_data;

  return false;
}



bool FeuerwerrSensor::findandConnectDevice()
{
    std::string testport;
    //int fd;
    for(int i = 0; i < 256; ++i)
    {
        testport.clear();
        testport.append("/dev/ttyUSB");
        testport.append(boost::lexical_cast<std::string>(i));

        std::string port;
        int32_t baud;
        ros::param::param<std::string>("~port", port, testport.c_str());
        ros::param::param<int32_t>("~baud", baud, 460800);
        serial::Timeout to = serial::Timeout(1000, 1000, 0, 1000, 0);
        m_ser.setTimeout(to);
        m_ser.setPort(port);
        m_ser.setBaudrate(baud);
        try
        {
            m_ser.open();
            std::vector<uint8_t> data_out;
            data_out.push_back(0x02);
            data_out.push_back(0x04);
            data_out.push_back(0x3F);
            data_out.push_back(0x03);
            m_ser.write(data_out);
            data_out.clear();
            uint8_t data_in[1];
            m_ser.read(data_in,1);
            if (data_in[0] == '!')
            {
                ROS_INFO_STREAM("FeuerWeRR Sensorboard connected on " << port);
                return true;

            }
            else
            {
                //ROS_ERROR_STREAM("FeuerWeRR Sensorboard does not answer! " << port);
                m_ser.close();
            }
        }
        catch(serial::IOException& e)
        {
            ROS_ERROR_STREAM("Unable to open port " << port);
        }


    }

    ROS_ERROR_STREAM("Unable to find FeuerWeRR Sensorboard");

    return false;

}

} //namepace sensor_synch_driver

bool onRadarFlag(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
    sensorsReady = true;
    return true;
}


int main(int argc, char **argv)
{
    sensorsReady = false;

    ros::init(argc, argv, "FeuerWeRR_Sensorboard");
    ros::NodeHandle n;


    sensor_synch_node::FeuerwerrSensor imu(n);
    ros::Publisher imudata_pub = n.advertise<sensor_synch_drivers::FeuerWeRRImuMsg>("feuerIMU", 1);
    ros::Publisher synch_ir = n.advertise<sensor_msgs::TimeReference>("FeuerTime_IR", 1);
    ros::Publisher synch_radar = n.advertise<sensor_msgs::TimeReference>("FeuerTime_Radar", 1);

    ros::ServiceServer serviceOnRadar = n.advertiseService("onRadarFlag", onRadarFlag);

    sensor_synch_drivers::FeuerWeRRImuMsg node_data;

    sensor_msgs::TimeReference synch_data;
    synch_data.source = "Sensorboard Port3 Trigger";

    imu.findandConnectDevice();

     // Warte bis alle Sensoren ready
  //  while((!sensorsReady) && ros::ok())
   // {
    //  ros::spinOnce();
   // }


    imu.startBurst();
    sensor_synch_node::U_ReceiveBuffer datain;
    while (ros::ok())
        {
          imu.readData(&datain);
          node_data = imu.getNodeData(datain);
          imudata_pub.publish(node_data);

          if(datain.sensordata.synchPort3)
          {
            if (!imu.get_TriggerStatus())
            {
               imu.set_TriggerStatus(true);
               imu.cleartime_stamp();
            }

          }

          if(imu.checknCallSyncServices(datain.sensordata.synchPort1,1))
          {
            synch_data.time_ref = ros::Time(imu.gettime_stamp());
            synch_data.header.stamp = ros::Time::now();
            synch_radar.publish(synch_data);

          }
          if(imu.checknCallSyncServices(datain.sensordata.synchPort2,2))
          {
            //synch_data.time_ref = ros::Time(imu.gettime_stamp());
            synch_ir.publish(synch_data);
          }

          ros::spinOnce();

        }
    //sleep(2);
    for(int i=0;i<1;i++)
    {
      imu.stopBurst();
    }
  //  imu.softReset();
    imu.disconnect();
    return EXIT_SUCCESS;
}

