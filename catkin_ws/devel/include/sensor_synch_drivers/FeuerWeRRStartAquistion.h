// Generated by gencpp from file sensor_synch_drivers/FeuerWeRRStartAquistion.msg
// DO NOT EDIT!


#ifndef SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRSTARTAQUISTION_H
#define SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRSTARTAQUISTION_H

#include <ros/service_traits.h>


#include <sensor_synch_drivers/FeuerWeRRStartAquistionRequest.h>
#include <sensor_synch_drivers/FeuerWeRRStartAquistionResponse.h>


namespace sensor_synch_drivers
{

struct FeuerWeRRStartAquistion
{

typedef FeuerWeRRStartAquistionRequest Request;
typedef FeuerWeRRStartAquistionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FeuerWeRRStartAquistion
} // namespace sensor_synch_drivers


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistion > {
  static const char* value()
  {
    return "a148093116093404300600142971a26c";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistion&) { return value(); }
};

template<>
struct DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistion > {
  static const char* value()
  {
    return "sensor_synch_drivers/FeuerWeRRStartAquistion";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistion&) { return value(); }
};


// service_traits::MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistionRequest> should match 
// service_traits::MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistion > 
template<>
struct MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistion >::value();
  }
  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistionRequest> should match 
// service_traits::DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistion > 
template<>
struct DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistionRequest>
{
  static const char* value()
  {
    return DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistion >::value();
  }
  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse> should match 
// service_traits::MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistion > 
template<>
struct MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistion >::value();
  }
  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse> should match 
// service_traits::DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistion > 
template<>
struct DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse>
{
  static const char* value()
  {
    return DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistion >::value();
  }
  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRSTARTAQUISTION_H