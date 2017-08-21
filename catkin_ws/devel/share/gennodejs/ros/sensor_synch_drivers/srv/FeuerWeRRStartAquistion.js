// Auto-generated. Do not edit!

// (in-package sensor_synch_drivers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FeuerWeRRStartAquistionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radar_start = null;
      this.ir_start = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radar_start')) {
        this.radar_start = initObj.radar_start
      }
      else {
        this.radar_start = false;
      }
      if (initObj.hasOwnProperty('ir_start')) {
        this.ir_start = initObj.ir_start
      }
      else {
        this.ir_start = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeuerWeRRStartAquistionRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radar_start]
    bufferOffset = _serializer.bool(obj.radar_start, buffer, bufferOffset);
    // Serialize message field [ir_start]
    bufferOffset = _serializer.bool(obj.ir_start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeuerWeRRStartAquistionRequest
    let len;
    let data = new FeuerWeRRStartAquistionRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radar_start]
    data.radar_start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_start]
    data.ir_start = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensor_synch_drivers/FeuerWeRRStartAquistionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a148093116093404300600142971a26c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool radar_start
    bool ir_start
    
    
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
    const resolved = new FeuerWeRRStartAquistionRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radar_start !== undefined) {
      resolved.radar_start = msg.radar_start;
    }
    else {
      resolved.radar_start = false
    }

    if (msg.ir_start !== undefined) {
      resolved.ir_start = msg.ir_start;
    }
    else {
      resolved.ir_start = false
    }

    return resolved;
    }
};

class FeuerWeRRStartAquistionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeuerWeRRStartAquistionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeuerWeRRStartAquistionResponse
    let len;
    let data = new FeuerWeRRStartAquistionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensor_synch_drivers/FeuerWeRRStartAquistionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeuerWeRRStartAquistionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: FeuerWeRRStartAquistionRequest,
  Response: FeuerWeRRStartAquistionResponse,
  md5sum() { return 'a148093116093404300600142971a26c'; },
  datatype() { return 'sensor_synch_drivers/FeuerWeRRStartAquistion'; }
};
