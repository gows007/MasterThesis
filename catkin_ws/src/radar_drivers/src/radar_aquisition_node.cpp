#include "ros/ros.h"
#include <boost/asio/deadline_timer.hpp>
#include <boost/asio/io_service.hpp>
#include <boost/asio/ip/tcp.hpp>
#include <boost/asio/read_until.hpp>
#include <boost/asio.hpp>
#include <boost/asio/streambuf.hpp>
#include <boost/asio/write.hpp>
#include <boost/bind.hpp>
#include <boost/thread.hpp>
#include <boost/lockfree/queue.hpp>


// For Ping stuff


#include <iostream>
#include <stdio.h>
#include <queue>
#include "std_msgs/Int16MultiArray.h"
#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "sensor_msgs/TimeReference.h"
#include "radar_drivers/FeuerRadarRaw.h"
#include "std_srvs/Empty.h"

#define DATALENGTH 320000

using boost::asio::deadline_timer;
using boost::asio::ip::tcp;

ros::Time current_feuertime;

//boost::lockfree::queue<radar_drivers::FeuerRadarRaw*> radarQueue(100);
std::queue<radar_drivers::FeuerRadarRaw> radarQueue;
std::queue<ros::Time> feuerTimeQueue;

struct TRadarParam
{
  int hfGain;
  int gainVga1;
  int gainVga2;
  int pllBandwidth;
  int ramps;
  int externalTrig;

}radarparam;


//boost::lockfree::queue<int> radarQueue(100);
void handle_synch_topic(const sensor_msgs::TimeReference::ConstPtr &msg)
{
     current_feuertime = msg->time_ref;
     feuerTimeQueue.push(current_feuertime);
}


class client
{
public:
  client(boost::asio::io_service& io_service,  ros::NodeHandle nodeHandle)
    : stopped_(false),
      socket_(io_service),
      deadline_(io_service),
      heartbeat_timer_(io_service),
      nodeHandle_(nodeHandle)
  {
    inbuffer.resize(DATALENGTH);
    iq_pub = nodeHandle_.advertise<radar_drivers::FeuerRadarRaw>("FeuerRadarRaw", 1);
    iq_pub_debug = nodeHandle_.advertise<std_msgs::Int16MultiArray>("IQraw_debug", 1);
    synch_sub = nodeHandle_.subscribe("FeuerTime_IR",1,handle_synch_topic);

    rx_counter = 0;
    current_feuertime = ros::Time::now();

  }
  
  // Called by the user of the client class to initiate the connection process.
  // The endpoint iterator will have been obtained using a tcp::resolver.
  void start(tcp::resolver::iterator endpoint_iter)
  {
    // Start the connect actor.
    start_connect(endpoint_iter);

    // Start the deadline actor. You will note that we're not setting any
    // particular deadline here. Instead, the connect and input actors will
    // update the deadline prior to each asynchronous operation.
    deadline_.async_wait(boost::bind(&client::check_deadline, this));
  }

  // This function terminates all the actors to shut down the connection. It
  // may be called by the user of the client class, or by the class itself in
  // response to graceful termination or an unrecoverable error.
  void stop()
  {
    stopped_ = true;
    socket_.close();
    deadline_.cancel();
    heartbeat_timer_.cancel();
  }

private:

  void start_connect(tcp::resolver::iterator endpoint_iter)
  {
    if (endpoint_iter != tcp::resolver::iterator())
    {
      std::cout << "Trying " << endpoint_iter->endpoint() << "...\n";

      // Set a deadline for the connect operation.
      deadline_.expires_from_now(boost::posix_time::seconds(10));

      // Start the asynchronous connect operation.
      socket_.async_connect(endpoint_iter->endpoint(),
          boost::bind(&client::handle_connect,
            this, _1, endpoint_iter));
    }
    else
    {
      // There are no more endpoints to try. Shut down the client.
      stop();
    }
  }

  void handle_connect(const boost::system::error_code& ec,
      tcp::resolver::iterator endpoint_iter)
  {
    if (stopped_)
      return;

    // The async_connect() function automatically opens the socket at the start
    // of the asynchronous operation. If the socket is closed at this time then
    // the timeout handler must have run first.
    if (!socket_.is_open())
    {
      std::cout << "Connect timed out\n";

      // Try the next available endpoint.
      start_connect(++endpoint_iter);
    }

    // Check if the connect operation failed before the deadline expired.
    else if (ec)
    {
      std::cout << "Connect error: " << ec.message() << "\n";
      std::cout << "Please start the radar server at first!" << "\n";


      // We need to close the socket used in the previous connection attempt
      // before starting a new one.
      socket_.close();

      // Try the next available endpoint.
      start_connect(++endpoint_iter);
    }

    // Otherwise we have successfully established a connection.
    else
    {
      std::cout << "Connected to " << endpoint_iter->endpoint() << "\n";

      // Start the input actor.
      start_read();

      // Start the heartbeat actor.
    //  start_write();
    }
  }

  void start_read()
  {
    // Set a deadline for the read operation.
    deadline_.expires_from_now(boost::posix_time::seconds(10));

    // Start an asynchronous operation to read a newline-delimited message.
    //boost::asio::async_read_until(socket_, input_buffer_, '\n',
      //  boost::bind(&client::handle_read, this, _1));
    inbuffer.resize(DATALENGTH);

    if (radarparam.externalTrig == 0)
    {// Keine Synchronisierung
      boost::asio::async_read(socket_,boost::asio::buffer(inbuffer,DATALENGTH*sizeof(int16_t)),boost::asio::transfer_exactly(DATALENGTH*sizeof(int16_t)),boost::bind(&client::handle_read,this, _1));
     }
      else
    {
      boost::asio::async_read(socket_,boost::asio::buffer(inbuffer,DATALENGTH*sizeof(int16_t)),boost::asio::transfer_exactly(DATALENGTH*sizeof(int16_t)),boost::bind(&client::handle_read_synchronized,this, _1));
    }

  }

  void handle_read_synchronized(const boost::system::error_code& ec)
  {
    if (stopped_)
      return;

    if (!ec)
    {
      rx_counter++;

      if (rx_counter%20 == 0)
      {
        std::cout << rx_counter << " * 160 ramps transmitted feuertime synchronized" << std::endl;
      }

       start_read();

      // Handle the data
      radar_drivers::FeuerRadarRaw radarData;

      std_msgs::Int16MultiArray IQdebugData;


      IQdebugData.layout.dim.push_back(std_msgs::MultiArrayDimension());
      IQdebugData.layout.dim[0].size = inbuffer.size();
      IQdebugData.layout.dim[0].stride = 1;
      IQdebugData.layout.dim[0].label = "[ICH1,QCH1]";

      radarData.IQmsg.layout.dim.push_back(std_msgs::MultiArrayDimension());
      radarData.IQmsg.layout.dim[0].size = inbuffer.size();
      radarData.IQmsg.layout.dim[0].stride = 1;
      radarData.IQmsg.layout.dim[0].label = "[IChannel,QChannel]";
      radarData.feuertime = current_feuertime;
      radarData.header.stamp = ros::Time::now();

      uint32_t counter = 0;


      for(std::vector<int16_t>::iterator it = inbuffer.begin(); it != inbuffer.end(); ++it)
      {
        counter++;
        if (counter%2)
        {
          radarData.IQmsg.data.push_back(*it);
          IQdebugData.data.push_back(*it);
        }
      }

      counter=0;
      for(std::vector<int16_t>::iterator it = inbuffer.begin(); it != inbuffer.end(); ++it)
      {
        counter++;
        if ((counter%2)==0)
        {
          radarData.IQmsg.data.push_back(*it);
          IQdebugData.data.push_back(*it);

        }
      }

      radarQueue.push(radarData);
      //TODO: Check for publish
      SendRosMessages_FromQueues();

    }
    else
    {
      std::cout << "Error on receive: " << ec.message() << "\n";

      stop();
    }

  }



  void SendRosMessages_FromQueues(void)
  {
    while((feuerTimeQueue.size() > 0) && (radarQueue.size() > 0))
    {
      radar_drivers::FeuerRadarRaw radarData;
      radarData = radarQueue.front();
      radarData.feuertime = feuerTimeQueue.front();

      iq_pub.publish(radarData);
      feuerTimeQueue.pop();
      radarQueue.pop();
    }


  }

  void handle_read(const boost::system::error_code& ec)
  {
    if (stopped_)
      return;

    if (!ec)
    {
      rx_counter++;

      if (rx_counter%20 == 0)
      {
        std::cout << rx_counter << " * 160 ramps transmitted free running" << std::endl;
      }

      start_read();


      radar_drivers::FeuerRadarRaw radarData;

      std_msgs::Int16MultiArray IQdebugData;


      IQdebugData.layout.dim.push_back(std_msgs::MultiArrayDimension());
      IQdebugData.layout.dim[0].size = inbuffer.size();
      IQdebugData.layout.dim[0].stride = 1;
      IQdebugData.layout.dim[0].label = "[ICH1,QCH1]";

      radarData.IQmsg.layout.dim.push_back(std_msgs::MultiArrayDimension());
      radarData.IQmsg.layout.dim[0].size = inbuffer.size();
      radarData.IQmsg.layout.dim[0].stride = 1;
      radarData.IQmsg.layout.dim[0].label = "[IChannel,QChannel]";

      radarData.feuertime = current_feuertime;
      radarData.header.stamp = ros::Time::now();

      uint32_t counter = 0;


      for(std::vector<int16_t>::iterator it = inbuffer.begin(); it != inbuffer.end(); ++it)
      {
        counter++;
        if (counter%2)
        {
          radarData.IQmsg.data.push_back(*it);
          IQdebugData.data.push_back(*it);
        }


      }

      counter=0;
      for(std::vector<int16_t>::iterator it = inbuffer.begin(); it != inbuffer.end(); ++it)
      {
        counter++;
        if ((counter%2)==0)
        {
          radarData.IQmsg.data.push_back(*it);
          IQdebugData.data.push_back(*it);
        }
      }

      //iq_pub_debug.publish(IQdebugData);
      iq_pub.publish(radarData);
    }
    else
    {
      std::cout << "Error on receive: " << ec.message() << "\n";

      stop();
    }

  }


  void check_deadline()
  {
    if (stopped_)
      return;

    // Check whether the deadline has passed. We compare the deadline against
    // the current time since a new asynchronous operation may have moved the
    // deadline before this actor had a chance to run.
    if (deadline_.expires_at() <= deadline_timer::traits_type::now())
    {
      // The deadline has passed. The socket is closed so that any outstanding
      // asynchronous operations are cancelled.
      socket_.close();

      // There is no longer an active deadline. The expiry is set to positive
      // infinity so that the actor takes no action until a new deadline is set.
      deadline_.expires_at(boost::posix_time::pos_infin);
    }

    // Put the actor back to sleep.
    deadline_.async_wait(boost::bind(&client::check_deadline, this));
  }

private:
  bool stopped_;
  tcp::socket socket_;
  std::vector<int16_t> inbuffer;
  std::vector<int16_t> iData;
  std::vector<int16_t> qData;
  ros::Publisher iq_pub;
  ros::Publisher iq_pub_debug;
  ros::Subscriber synch_sub;
  ros::NodeHandle nodeHandle_;
  uint32_t rx_counter;

  deadline_timer deadline_;
  deadline_timer heartbeat_timer_;
};

int main(int argc, char **argv)
{

  ros::init(argc, argv, "radar_aquisition_node");
  ros::NodeHandle nh;
  ros::ServiceClient srvOnRadarFlag = nh.serviceClient<std_srvs::Empty>("onRadarFlag");

  TRadarParam radarTemp;
  if(nh.getParam("/feuerwerr_siso_demo/radar_aquistion_node/hfGain",radarTemp.hfGain))
    radarparam.hfGain = radarTemp.hfGain;
  else
    radarparam.hfGain = 600;

  if(nh.getParam("/feuerwerr_siso_demo/radar_aquistion_node/gainVga1",radarTemp.gainVga1))
    radarparam.gainVga1 = radarTemp.gainVga1;
  else
    radarparam.gainVga1 = 20;

  if(nh.getParam("/feuerwerr_siso_demo/radar_aquistion_node/gainVga2",radarTemp.gainVga2))
    radarparam.gainVga2 = radarTemp.gainVga2;
  else
    radarparam.gainVga2 = 10;

  if(nh.getParam("/feuerwerr_siso_demo/radar_aquistion_node/pllBandwidth",radarTemp.pllBandwidth))
    radarparam.pllBandwidth = radarTemp.pllBandwidth;
  else
    radarparam.pllBandwidth = 250;

  if(nh.getParam("/feuerwerr_siso_demo/radar_aquistion_node/ramps",radarTemp.ramps))
    radarparam.ramps = radarTemp.ramps;
  else
    radarparam.ramps = 160;


  if(nh.getParam("/feuerwerr_siso_demo/radar_aquistion_node/externalTrig",radarTemp.externalTrig))
    radarparam.externalTrig = radarTemp.externalTrig;
  else
    radarparam.externalTrig = 0;


  char radar_str_buffer [200];


  sprintf(radar_str_buffer,"sshpass -p 'root' ssh root@192.168.1.66 ./linux_radar_appl.elf --hfGain %d --gainVga1 %d --gainVga2 %d --pllBandwidth %d --ramps %d --externalTrig %d&",radarparam.hfGain,
          radarparam.gainVga1,
          radarparam.gainVga2,
          radarparam.pllBandwidth,
          radarparam.ramps,
          radarparam.externalTrig);

  ROS_INFO("Try to start the radar sensor via SSH with %s...",radar_str_buffer);

 // system(radar_str_buffer);

  ROS_INFO("...wait 5 seconds for radar programm startup");

  //sleep(1);
  std_srvs::Empty srv_msg;

  srvOnRadarFlag.call(srv_msg);
 // sleep(1);
  boost::asio::io_service io_service;
  tcp::resolver r(io_service);
  client c(io_service, nh);


  c.start(r.resolve(tcp::resolver::query("192.168.1.66","9999")));

  boost::thread bt(boost::bind(&boost::asio::io_service::run, &io_service));



  while (ros::ok())
  {

    ros::spinOnce();
    //TODO: Insert a method for nonBlocking! (Maybe wait for 1ms?)
  }
  c.stop();
  return 0;
}
