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

class fusion_overlay {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image_feuertime = null;
      this.fusionPoints = null;
      this.range = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('image_feuertime')) {
        this.image_feuertime = initObj.image_feuertime
      }
      else {
        this.image_feuertime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('fusionPoints')) {
        this.fusionPoints = initObj.fusionPoints
      }
      else {
        this.fusionPoints = [];
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fusion_overlay
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image_feuertime]
    bufferOffset = _serializer.time(obj.image_feuertime, buffer, bufferOffset);
    // Serialize message field [fusionPoints]
    bufferOffset = _arraySerializer.float32(obj.fusionPoints, buffer, bufferOffset, null);
    // Serialize message field [range]
    bufferOffset = _arraySerializer.float32(obj.range, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fusion_overlay
    let len;
    let data = new fusion_overlay(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_feuertime]
    data.image_feuertime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [fusionPoints]
    data.fusionPoints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.fusionPoints.length;
    length += 4 * object.range.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iss_messages/fusion_overlay';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df8e1f6b30f762c4e9c76e7e87f4cfef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    time image_feuertime
    
    float32[] fusionPoints
    float32[] range
    
    
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
    const resolved = new fusion_overlay(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.image_feuertime !== undefined) {
      resolved.image_feuertime = msg.image_feuertime;
    }
    else {
      resolved.image_feuertime = {secs: 0, nsecs: 0}
    }

    if (msg.fusionPoints !== undefined) {
      resolved.fusionPoints = msg.fusionPoints;
    }
    else {
      resolved.fusionPoints = []
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = []
    }

    return resolved;
    }
};

module.exports = fusion_overlay;
