// Auto-generated. Do not edit!

// (in-package sensor_synch_drivers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FeuerWeRRImuMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imu_angular_velocity = null;
      this.imu_linear_acceleration = null;
      this.ma351_linear_acceleration = null;
      this.magnetometer = null;
      this.feuertime = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('imu_angular_velocity')) {
        this.imu_angular_velocity = initObj.imu_angular_velocity
      }
      else {
        this.imu_angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('imu_linear_acceleration')) {
        this.imu_linear_acceleration = initObj.imu_linear_acceleration
      }
      else {
        this.imu_linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ma351_linear_acceleration')) {
        this.ma351_linear_acceleration = initObj.ma351_linear_acceleration
      }
      else {
        this.ma351_linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('magnetometer')) {
        this.magnetometer = initObj.magnetometer
      }
      else {
        this.magnetometer = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('feuertime')) {
        this.feuertime = initObj.feuertime
      }
      else {
        this.feuertime = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeuerWeRRImuMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imu_angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.imu_angular_velocity, buffer, bufferOffset);
    // Serialize message field [imu_linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.imu_linear_acceleration, buffer, bufferOffset);
    // Serialize message field [ma351_linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ma351_linear_acceleration, buffer, bufferOffset);
    // Serialize message field [magnetometer]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.magnetometer, buffer, bufferOffset);
    // Serialize message field [feuertime]
    bufferOffset = _serializer.time(obj.feuertime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeuerWeRRImuMsg
    let len;
    let data = new FeuerWeRRImuMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu_angular_velocity]
    data.imu_angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu_linear_acceleration]
    data.imu_linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ma351_linear_acceleration]
    data.ma351_linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [magnetometer]
    data.magnetometer = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [feuertime]
    data.feuertime = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_synch_drivers/FeuerWeRRImuMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dee61ce08b0d15cae6217dbe3037c1bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message to hold data from the FeuerWeRR (Inertial Measurement Unit)
    
    Header header
    geometry_msgs/Vector3 imu_angular_velocity
    geometry_msgs/Vector3 imu_linear_acceleration
    geometry_msgs/Vector3 ma351_linear_acceleration
    geometry_msgs/Vector3 magnetometer
    time feuertime
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeuerWeRRImuMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.imu_angular_velocity !== undefined) {
      resolved.imu_angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.imu_angular_velocity)
    }
    else {
      resolved.imu_angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.imu_linear_acceleration !== undefined) {
      resolved.imu_linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.imu_linear_acceleration)
    }
    else {
      resolved.imu_linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.ma351_linear_acceleration !== undefined) {
      resolved.ma351_linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.ma351_linear_acceleration)
    }
    else {
      resolved.ma351_linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.magnetometer !== undefined) {
      resolved.magnetometer = geometry_msgs.msg.Vector3.Resolve(msg.magnetometer)
    }
    else {
      resolved.magnetometer = new geometry_msgs.msg.Vector3()
    }

    if (msg.feuertime !== undefined) {
      resolved.feuertime = msg.feuertime;
    }
    else {
      resolved.feuertime = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = FeuerWeRRImuMsg;
