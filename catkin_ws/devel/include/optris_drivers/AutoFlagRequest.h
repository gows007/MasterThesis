// Generated by gencpp from file optris_drivers/AutoFlagRequest.msg
// DO NOT EDIT!


#ifndef OPTRIS_DRIVERS_MESSAGE_AUTOFLAGREQUEST_H
#define OPTRIS_DRIVERS_MESSAGE_AUTOFLAGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace optris_drivers
{
template <class ContainerAllocator>
struct AutoFlagRequest_
{
  typedef AutoFlagRequest_<ContainerAllocator> Type;

  AutoFlagRequest_()
    : autoFlag(false)  {
    }
  AutoFlagRequest_(const ContainerAllocator& _alloc)
    : autoFlag(false)  {
  (void)_alloc;
    }



   typedef uint8_t _autoFlag_type;
  _autoFlag_type autoFlag;




  typedef boost::shared_ptr< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AutoFlagRequest_

typedef ::optris_drivers::AutoFlagRequest_<std::allocator<void> > AutoFlagRequest;

typedef boost::shared_ptr< ::optris_drivers::AutoFlagRequest > AutoFlagRequestPtr;
typedef boost::shared_ptr< ::optris_drivers::AutoFlagRequest const> AutoFlagRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::optris_drivers::AutoFlagRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace optris_drivers

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'optris_drivers': ['/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0448d313eaf6cbdef751f184475e9055";
  }

  static const char* value(const ::optris_drivers::AutoFlagRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0448d313eaf6cbdeULL;
  static const uint64_t static_value2 = 0xf751f184475e9055ULL;
};

template<class ContainerAllocator>
struct DataType< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "optris_drivers/AutoFlagRequest";
  }

  static const char* value(const ::optris_drivers::AutoFlagRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool autoFlag\n\
";
  }

  static const char* value(const ::optris_drivers::AutoFlagRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.autoFlag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AutoFlagRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::optris_drivers::AutoFlagRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::optris_drivers::AutoFlagRequest_<ContainerAllocator>& v)
  {
    s << indent << "autoFlag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.autoFlag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPTRIS_DRIVERS_MESSAGE_AUTOFLAGREQUEST_H
