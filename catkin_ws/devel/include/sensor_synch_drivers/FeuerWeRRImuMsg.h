// Generated by gencpp from file sensor_synch_drivers/FeuerWeRRImuMsg.msg
// DO NOT EDIT!


#ifndef SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRIMUMSG_H
#define SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRIMUMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace sensor_synch_drivers
{
template <class ContainerAllocator>
struct FeuerWeRRImuMsg_
{
  typedef FeuerWeRRImuMsg_<ContainerAllocator> Type;

  FeuerWeRRImuMsg_()
    : header()
    , imu_angular_velocity()
    , imu_linear_acceleration()
    , ma351_linear_acceleration()
    , magnetometer()
    , feuertime()  {
    }
  FeuerWeRRImuMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , imu_angular_velocity(_alloc)
    , imu_linear_acceleration(_alloc)
    , ma351_linear_acceleration(_alloc)
    , magnetometer(_alloc)
    , feuertime()  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _imu_angular_velocity_type;
  _imu_angular_velocity_type imu_angular_velocity;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _imu_linear_acceleration_type;
  _imu_linear_acceleration_type imu_linear_acceleration;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _ma351_linear_acceleration_type;
  _ma351_linear_acceleration_type ma351_linear_acceleration;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _magnetometer_type;
  _magnetometer_type magnetometer;

   typedef ros::Time _feuertime_type;
  _feuertime_type feuertime;




  typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> const> ConstPtr;

}; // struct FeuerWeRRImuMsg_

typedef ::sensor_synch_drivers::FeuerWeRRImuMsg_<std::allocator<void> > FeuerWeRRImuMsg;

typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRImuMsg > FeuerWeRRImuMsgPtr;
typedef boost::shared_ptr< ::sensor_synch_drivers::FeuerWeRRImuMsg const> FeuerWeRRImuMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sensor_synch_drivers

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_synch_drivers': ['/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dee61ce08b0d15cae6217dbe3037c1bc";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdee61ce08b0d15caULL;
  static const uint64_t static_value2 = 0xe6217dbe3037c1bcULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_synch_drivers/FeuerWeRRImuMsg";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This is a message to hold data from the FeuerWeRR (Inertial Measurement Unit)\n\
\n\
Header header\n\
geometry_msgs/Vector3 imu_angular_velocity\n\
geometry_msgs/Vector3 imu_linear_acceleration\n\
geometry_msgs/Vector3 ma351_linear_acceleration\n\
geometry_msgs/Vector3 magnetometer\n\
time feuertime\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.imu_angular_velocity);
      stream.next(m.imu_linear_acceleration);
      stream.next(m.ma351_linear_acceleration);
      stream.next(m.magnetometer);
      stream.next(m.feuertime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FeuerWeRRImuMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_synch_drivers::FeuerWeRRImuMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "imu_angular_velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.imu_angular_velocity);
    s << indent << "imu_linear_acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.imu_linear_acceleration);
    s << indent << "ma351_linear_acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.ma351_linear_acceleration);
    s << indent << "magnetometer: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.magnetometer);
    s << indent << "feuertime: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.feuertime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_SYNCH_DRIVERS_MESSAGE_FEUERWERRIMUMSG_H
