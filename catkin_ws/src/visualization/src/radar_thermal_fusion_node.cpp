/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2012-2016
 *  Technische Hochschule Nürnberg Georg Simon Ohm
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Nuremberg Institute of Technology
 *     Georg Simon Ohm nor the authors names may be used to endorse
 *     or promote products derived from this software without specific
 *     prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 * Author: Stefan May
 *********************************************************************/

#include "ros/ros.h"
#include <image_transport/image_transport.h>

#include "libirimager/ImageBuilder.h"

#include <camera_info_manager/camera_info_manager.h>
#include <sensor_msgs/CameraInfo.h>

#include <optris_drivers/Palette.h>

#include <sensor_msgs/TimeReference.h>

#include "opencv2/core/version.hpp"

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <sensor_msgs/image_encodings.h>

#include <cv_bridge/cv_bridge.h>

#include "iss_messages/radar_target.h"

#include "iss_messages/fusion_overlay.h"


unsigned char*                    _bufferThermal = NULL;

image_transport::Publisher*       _pubRadarThermal;
unsigned int                      _frame = 0;
evo::ImageBuilder              _iBuilder;

sensor_msgs::CameraInfo                 _camera_info;
sensor_msgs::TimeReference              _currentFeuerTime;

iss_messages::radar_target   _currentTargetList;
iss_messages::fusion_overlay   _currentFusionPoints;

image_transport::CameraPublisher*       _camera_info_pub     = NULL;
camera_info_manager::CameraInfoManager* _camera_info_manager = NULL;
ros::ServiceServer _sPalette;


void sub_synch_ir_callback(const sensor_msgs::TimeReference::ConstPtr& msg)
{
  _currentFeuerTime = *msg;
  ROS_INFO("IR Got Synch");
}

void subFusionCallback(const iss_messages::fusion_overlay::ConstPtr& msg)
{
  _currentFusionPoints = *msg;
  ROS_INFO("Fusion Points Sent for Visulization");
}



void subRadarCallback(const iss_messages::radar_target::ConstPtr& msg)
{
  _currentTargetList = *msg;
  ROS_INFO("Radar Target List Sent for Visulization");
}


void onThermalDataReceive(const sensor_msgs::ImageConstPtr& image)
{
   // check for any subscribers to save computation time
  if((_pubRadarThermal->getNumSubscribers() == 0) && (_camera_info_pub->getNumSubscribers() == 0))
     return;

  unsigned short* data = (unsigned short*)&image->data[0];
  _iBuilder.setData(image->width, image->height, data);

  if(_bufferThermal==NULL)
    _bufferThermal = new unsigned char[image->width * image->height * 3];

  _iBuilder.convertTemperatureToPaletteImage(_bufferThermal, true);


  cv_bridge::CvImageConstPtr cv_ptr;

  try
  {
    cv_ptr = cv_bridge::toCvShare(image , sensor_msgs::image_encodings::BGR8 );

  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR ("Error in image show");
  }

  cv::imshow ("Radar Thermal Fusion", cv_ptr->image);
  cv::waitKey (30);

  sensor_msgs::Image img;
  img.header.frame_id = "radar_thermal_image_view";
  img.height 	        = image->height;
  img.width 	        = image->width;
  img.encoding        = "rgb8";
  img.step            = image->width*3;
  img.header.seq      = ++_frame;
  img.header.stamp    = ros::Time::now();

  // copy the image buffer
  img.data.resize(img.height*img.step);
  memcpy(&img.data[0], &_bufferThermal[0], img.height * img.step * sizeof(*_bufferThermal));
  
  _camera_info = _camera_info_manager->getCameraInfo();
  _camera_info.header = img.header;
  _camera_info_pub->publish(img, _camera_info);

  _pubRadarThermal->publish(img);



}


bool onPalette(optris_drivers::Palette::Request &req, optris_drivers::Palette::Response &res)
{
  res.success = false;

  if(req.palette > 0 && req.palette < 12)
  {
    _iBuilder.setPalette((evo::EnumOptrisColoringPalette)req.palette);
    res.success = true;
  }

  if(req.paletteScaling >=1 && req.paletteScaling <= 4)
  {
    _iBuilder.setPaletteScalingMethod((evo::EnumOptrisPaletteScalingMethod) req.paletteScaling);
    res.success = true;
  }

  if(_iBuilder.getPaletteScalingMethod() == evo::eManual &&  req.temperatureMin < req.temperatureMax)
  {
    _iBuilder.setManualTemperatureRange(req.temperatureMin, req.temperatureMax);
    res.success = true;
  }

  return true;
}

int main (int argc, char* argv[])
{
  ros::init (argc, argv, "Radar_Thermal_Fusion_node_FeuerWeRR");

  // private node handle to support command line parameters for rosrun
  ros::NodeHandle n_("~");

  cv::namedWindow("Radar Thermal Fusion", 1 );
  cv::startWindowThread();


  int palette = 6;
  n_.getParam("palette", palette);

  evo::EnumOptrisPaletteScalingMethod scalingMethod = evo::eMinMax;
  int sm;
  n_.getParam("paletteScaling", sm);
  if(sm>=1 && sm <=4) scalingMethod = (evo::EnumOptrisPaletteScalingMethod) sm;

  _iBuilder.setPaletteScalingMethod(scalingMethod);
  _iBuilder.setPalette((evo::EnumOptrisColoringPalette)palette);

  double tMin     = 20.;
  double tMax     = 40.;
  double looprate = 30.;

  n_.getParam("temperatureMin", tMin);
  n_.getParam("temperatureMax", tMax);
  n_.getParam("looprate",       looprate);

  _iBuilder.setManualTemperatureRange((float)tMin, (float)tMax);

  ros::NodeHandle n;
  image_transport::ImageTransport it(n);
  image_transport::Subscriber subThermal = it.subscribe("thermal_image", 1, onThermalDataReceive);


  image_transport::Publisher pubt = it.advertise("radar_thermal_image_view", 1);


   ros::Subscriber sub_synchIR = n.subscribe("FeuerTime_IR",100,sub_synch_ir_callback);

   ros::Subscriber subRadar = n.subscribe ("RadarTargetList", 1000, subRadarCallback);

   ros::Subscriber subFusion = n.subscribe ("/fusionPoints", 1000, subFusionCallback);

  _pubRadarThermal = &pubt;


  _sPalette = n.advertiseService("palette",  &onPalette);

  std::string camera_name;
  std::string camera_info_url;
  n_.getParam("camera_name", camera_name);
  n_.getParam("camera_info_url", camera_info_url);

  // initialize CameraInfoManager, providing set_camera_info service for geometric calibration
  // see http://wiki.ros.org/camera_info_manager
  camera_info_manager::CameraInfoManager cinfo_manager(n);
  _camera_info_manager = &cinfo_manager;

  if (!_camera_info_manager->setCameraName(camera_name))
  {
    // GUID is 16 hex digits, which should be valid.
    // If not, use it for log messages anyway.
    ROS_WARN_STREAM("[" << camera_name << "] name not valid" << " for camera_info_manger");
  }

  if (_camera_info_manager->validateURL(camera_info_url))
  {
    if ( !_camera_info_manager->loadCameraInfo(camera_info_url) )
    {
      ROS_WARN( "camera_info_url does not contain calibration data." );
    } 
    else if ( !_camera_info_manager->isCalibrated() )
    {
      ROS_WARN( "Camera is not calibrated. Using default values." );
    } 
  } 
  else
  {
    ROS_ERROR_STREAM_ONCE( "Calibration URL syntax is not supported by CameraInfoManager." );
  }

  // Advertise a synchronized camera raw image + info topic pair with subscriber status callbacks.
  image_transport::CameraPublisher cinfo_pub = it.advertiseCamera("image_raw", 1);
  _camera_info_pub = &cinfo_pub;

  // set to png compression
  std::string key;
  if(ros::param::search("thermal_image/compressed/format", key))
  {
     ros::param::set(key, "png");
  }
  if(ros::param::search("thermal_image/compressed/png_level", key))
  {
     ros::param::set(key, 9);
  }

  ros::spin();

  if(_bufferThermal)	delete [] _bufferThermal;
  cv::destroyWindow("Radar Thermal Fusion");

}
