// Auto-generated. Do not edit!

// (in-package optris_drivers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Temperature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.temperature_flag = null;
      this.temperature_box = null;
      this.temperature_chip = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('temperature_flag')) {
        this.temperature_flag = initObj.temperature_flag
      }
      else {
        this.temperature_flag = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_box')) {
        this.temperature_box = initObj.temperature_box
      }
      else {
        this.temperature_box = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_chip')) {
        this.temperature_chip = initObj.temperature_chip
      }
      else {
        this.temperature_chip = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Temperature
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [temperature_flag]
    bufferOffset = _serializer.float32(obj.temperature_flag, buffer, bufferOffset);
    // Serialize message field [temperature_box]
    bufferOffset = _serializer.float32(obj.temperature_box, buffer, bufferOffset);
    // Serialize message field [temperature_chip]
    bufferOffset = _serializer.float32(obj.temperature_chip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Temperature
    let len;
    let data = new Temperature(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [temperature_flag]
    data.temperature_flag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature_box]
    data.temperature_box = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature_chip]
    data.temperature_chip = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'optris_drivers/Temperature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ca2cd25d02107fe9171609096a539e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 temperature_flag
    float32 temperature_box
    float32 temperature_chip
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Temperature(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.temperature_flag !== undefined) {
      resolved.temperature_flag = msg.temperature_flag;
    }
    else {
      resolved.temperature_flag = 0.0
    }

    if (msg.temperature_box !== undefined) {
      resolved.temperature_box = msg.temperature_box;
    }
    else {
      resolved.temperature_box = 0.0
    }

    if (msg.temperature_chip !== undefined) {
      resolved.temperature_chip = msg.temperature_chip;
    }
    else {
      resolved.temperature_chip = 0.0
    }

    return resolved;
    }
};

module.exports = Temperature;
