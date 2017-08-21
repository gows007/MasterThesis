// Auto-generated. Do not edit!

// (in-package optris_drivers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AutoFlagRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.autoFlag = null;
    }
    else {
      if (initObj.hasOwnProperty('autoFlag')) {
        this.autoFlag = initObj.autoFlag
      }
      else {
        this.autoFlag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoFlagRequest
    // Serialize message field [autoFlag]
    bufferOffset = _serializer.bool(obj.autoFlag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoFlagRequest
    let len;
    let data = new AutoFlagRequest(null);
    // Deserialize message field [autoFlag]
    data.autoFlag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'optris_drivers/AutoFlagRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0448d313eaf6cbdef751f184475e9055';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool autoFlag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutoFlagRequest(null);
    if (msg.autoFlag !== undefined) {
      resolved.autoFlag = msg.autoFlag;
    }
    else {
      resolved.autoFlag = false
    }

    return resolved;
    }
};

class AutoFlagResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isAutoFlagActive = null;
    }
    else {
      if (initObj.hasOwnProperty('isAutoFlagActive')) {
        this.isAutoFlagActive = initObj.isAutoFlagActive
      }
      else {
        this.isAutoFlagActive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoFlagResponse
    // Serialize message field [isAutoFlagActive]
    bufferOffset = _serializer.bool(obj.isAutoFlagActive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoFlagResponse
    let len;
    let data = new AutoFlagResponse(null);
    // Deserialize message field [isAutoFlagActive]
    data.isAutoFlagActive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'optris_drivers/AutoFlagResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce4ae390409e36d27156d92d7d343830';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isAutoFlagActive
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutoFlagResponse(null);
    if (msg.isAutoFlagActive !== undefined) {
      resolved.isAutoFlagActive = msg.isAutoFlagActive;
    }
    else {
      resolved.isAutoFlagActive = false
    }

    return resolved;
    }
};

module.exports = {
  Request: AutoFlagRequest,
  Response: AutoFlagResponse,
  md5sum() { return 'c55e7efaaabffa6dd063014d83eca6d2'; },
  datatype() { return 'optris_drivers/AutoFlag'; }
};
