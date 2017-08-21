#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/TimeReference.h"
#include "sensor_msgs/Image.h"
#include <image_transport/image_transport.h>
#include "sensor_synch_drivers/FeuerIRImage.h"
#include <queue>

ros::Time currentFeuerTime;
ros::Publisher pub_feuerir;


void sub_synch_ir_callback(const sensor_msgs::TimeReference::ConstPtr& msg)
{
  currentFeuerTime = msg->time_ref;
//  ROS_INFO("IR Got Synch");
}

void image_optris_callback(const sensor_msgs::ImageConstPtr& msg)
{
  sensor_synch_drivers::FeuerIRImage irmsg;

  irmsg.feuertime = currentFeuerTime;
  irmsg.irimage = *msg;
  pub_feuerir.publish(irmsg);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "optris_snych_node");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);

  ros::Subscriber sub_synchIR = nh.subscribe("FeuerTime_IR",10,sub_synch_ir_callback);
  image_transport::Subscriber sub_optris = it.subscribe("image_raw",1,image_optris_callback);
  pub_feuerir = nh.advertise<sensor_synch_drivers::FeuerIRImage>("FeuerIRImage",1);

  ros::spin();

  return 0;
}
