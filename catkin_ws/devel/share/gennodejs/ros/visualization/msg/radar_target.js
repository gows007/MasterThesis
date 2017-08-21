// Auto-generated. Do not edit!

// (in-package visualization.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class radar_target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seqID = null;
      this.RADARhwTimeStamp = null;
      this.rangeEstimate = null;
      this.velocityEstimate = null;
      this.amplitude = null;
    }
    else {
      if (initObj.hasOwnProperty('seqID')) {
        this.seqID = initObj.seqID
      }
      else {
        this.seqID = 0;
      }
      if (initObj.hasOwnProperty('RADARhwTimeStamp')) {
        this.RADARhwTimeStamp = initObj.RADARhwTimeStamp
      }
      else {
        this.RADARhwTimeStamp = 0;
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
    // Serialize message field [seqID]
    bufferOffset = _serializer.uint32(obj.seqID, buffer, bufferOffset);
    // Serialize message field [RADARhwTimeStamp]
    bufferOffset = _serializer.uint32(obj.RADARhwTimeStamp, buffer, bufferOffset);
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
    // Deserialize message field [seqID]
    data.seqID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [RADARhwTimeStamp]
    data.RADARhwTimeStamp = _deserializer.uint32(buffer, bufferOffset);
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
    length += 4 * object.rangeEstimate.length;
    length += 4 * object.velocityEstimate.length;
    length += 4 * object.amplitude.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visualization/radar_target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbd89b12a68c9a950a123efe1f1d5712';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 seqID
    uint32 RADARhwTimeStamp
    float32[] rangeEstimate
    float32[] velocityEstimate
    float32[] amplitude
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new radar_target(null);
    if (msg.seqID !== undefined) {
      resolved.seqID = msg.seqID;
    }
    else {
      resolved.seqID = 0
    }

    if (msg.RADARhwTimeStamp !== undefined) {
      resolved.RADARhwTimeStamp = msg.RADARhwTimeStamp;
    }
    else {
      resolved.RADARhwTimeStamp = 0
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
