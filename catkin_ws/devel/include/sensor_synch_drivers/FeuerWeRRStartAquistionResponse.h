// Generated by gencpp from file sensor_synch_drivers/FeuerWeRRStartAquistionResponse.msg
// DO NOT EDIT!


#ifndef SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRSTARTAQUISTIONRESPONSE_H
#define SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRSTARTAQUISTIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensor_synch_drivers
{
template <class ContainerAllocator>
struct FeuerWeRRStartAquistionResponse_
{
  typedef FeuerWeRRStartAquistionResponse_<ContainerAllocator> Type;

  FeuerWeRRStartAquistionResponse_()
    {
    }
  FeuerWeRRStartAquistionResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct FeuerWeRRStartAquistionResponse_

typedef ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<std::allocator<void> > FeuerWeRRStartAquistionResponse;

typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse > FeuerWeRRStartAquistionResponsePtr;
typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse const> FeuerWeRRStartAquistionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sensor_synch_drivers

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_synch_drivers': ['/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_synch_drivers/FeuerWeRRStartAquistionResponse";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FeuerWeRRStartAquistionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::sensor_synch_drivers::FeuerWeRRStartAquistionResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRSTARTAQUISTIONRESPONSE_H
