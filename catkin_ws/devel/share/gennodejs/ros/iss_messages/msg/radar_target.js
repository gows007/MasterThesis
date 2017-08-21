// Auto-generated. Do not edit!

// (in-package iss_messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class radar_target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radar_feuertime = null;
      this.rangeEstimate = null;
      this.velocityEstimate = null;
      this.amplitude = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radar_feuertime')) {
        this.radar_feuertime = initObj.radar_feuertime
      }
      else {
        this.radar_feuertime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('rangeEstimate')) {
        this.rangeEstimate = initObj.rangeEstimate
      }
      else {
        this.rangeEstimate = [];
      }
      if (initObj.hasOwnProperty('velocityEstimate')) {
        this.velocityEstimate = initObj.velocityEstimate
      }
      else {
        this.velocityEstimate = [];
      }
      if (initObj.hasOwnProperty('amplitude')) {
        this.amplitude = initObj.amplitude
      }
      else {
        this.amplitude = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type radar_target
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radar_feuertime]
    bufferOffset = _serializer.time(obj.radar_feuertime, buffer, bufferOffset);
    // Serialize message field [rangeEstimate]
    bufferOffset = _arraySerializer.float32(obj.rangeEstimate, buffer, bufferOffset, null);
    // Serialize message field [velocityEstimate]
    bufferOffset = _arraySerializer.float32(obj.velocityEstimate, buffer, bufferOffset, null);
    // Serialize message field [amplitude]
    bufferOffset = _arraySerializer.float32(obj.amplitude, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type radar_target
    let len;
    let data = new radar_target(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radar_feuertime]
    data.radar_feuertime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [rangeEstimate]
    data.rangeEstimate = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocityEstimate]
    data.velocityEstimate = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [amplitude]
    data.amplitude = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.rangeEstimate.length;
    length += 4 * object.velocityEstimate.length;
    length += 4 * object.amplitude.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iss_messages/radar_target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76fe86515993ef411b4797c8ff5dbde8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    time radar_feuertime
    
    float32[] rangeEstimate
    float32[] velocityEstimate
    float32[] amplitude
    
    
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
    const resolved = new radar_target(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radar_feuertime !== undefined) {
      resolved.radar_feuertime = msg.radar_feuertime;
    }
    else {
      resolved.radar_feuertime = {secs: 0, nsecs: 0}
    }

    if (msg.rangeEstimate !== undefined) {
      resolved.rangeEstimate = msg.rangeEstimate;
    }
    else {
      resolved.rangeEstimate = []
    }

    if (msg.velocityEstimate !== undefined) {
      resolved.velocityEstimate = msg.velocityEstimate;
    }
    else {
      resolved.velocityEstimate = []
    }

    if (msg.amplitude !== undefined) {
      resolved.amplitude = msg.amplitude;
    }
    else {
      resolved.amplitude = []
    }

    return resolved;
    }
};

module.exports = radar_target;
