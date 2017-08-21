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

class fusion_overlay {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seqID = null;
      this.imageHwTimeStamp = null;
      this.fusionPoints = null;
      this.range = null;
    }
    else {
      if (initObj.hasOwnProperty('seqID')) {
        this.seqID = initObj.seqID
      }
      else {
        this.seqID = 0;
      }
      if (initObj.hasOwnProperty('imageHwTimeStamp')) {
        this.imageHwTimeStamp = initObj.imageHwTimeStamp
      }
      else {
        this.imageHwTimeStamp = 0;
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
    // Serialize message field [seqID]
    bufferOffset = _serializer.uint32(obj.seqID, buffer, bufferOffset);
    // Serialize message field [imageHwTimeStamp]
    bufferOffset = _serializer.uint32(obj.imageHwTimeStamp, buffer, bufferOffset);
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
    // Deserialize message field [seqID]
    data.seqID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [imageHwTimeStamp]
    data.imageHwTimeStamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fusionPoints]
    data.fusionPoints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.fusionPoints.length;
    length += 4 * object.range.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visualization/fusion_overlay';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5519680eaf65b54a21dd39863066fb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 seqID
    uint32 imageHwTimeStamp
    float32[] fusionPoints
    float32[] range
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fusion_overlay(null);
    if (msg.seqID !== undefined) {
      resolved.seqID = msg.seqID;
    }
    else {
      resolved.seqID = 0
    }

    if (msg.imageHwTimeStamp !== undefined) {
      resolved.imageHwTimeStamp = msg.imageHwTimeStamp;
    }
    else {
      resolved.imageHwTimeStamp = 0
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
