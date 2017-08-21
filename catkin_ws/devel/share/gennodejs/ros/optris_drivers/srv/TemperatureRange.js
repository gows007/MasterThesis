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

class TemperatureRangeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperatureRangeMin = null;
      this.temperatureRangeMax = null;
    }
    else {
      if (initObj.hasOwnProperty('temperatureRangeMin')) {
        this.temperatureRangeMin = initObj.temperatureRangeMin
      }
      else {
        this.temperatureRangeMin = 0;
      }
      if (initObj.hasOwnProperty('temperatureRangeMax')) {
        this.temperatureRangeMax = initObj.temperatureRangeMax
      }
      else {
        this.temperatureRangeMax = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TemperatureRangeRequest
    // Serialize message field [temperatureRangeMin]
    bufferOffset = _serializer.int16(obj.temperatureRangeMin, buffer, bufferOffset);
    // Serialize message field [temperatureRangeMax]
    bufferOffset = _serializer.int16(obj.temperatureRangeMax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TemperatureRangeRequest
    let len;
    let data = new TemperatureRangeRequest(null);
    // Deserialize message field [temperatureRangeMin]
    data.temperatureRangeMin = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temperatureRangeMax]
    data.temperatureRangeMax = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'optris_drivers/TemperatureRangeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16d7dcc9d398a75b4b07c76d6255fcff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 temperatureRangeMin
    int16 temperatureRangeMax
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TemperatureRangeRequest(null);
    if (msg.temperatureRangeMin !== undefined) {
      resolved.temperatureRangeMin = msg.temperatureRangeMin;
    }
    else {
      resolved.temperatureRangeMin = 0
    }

    if (msg.temperatureRangeMax !== undefined) {
      resolved.temperatureRangeMax = msg.temperatureRangeMax;
    }
    else {
      resolved.temperatureRangeMax = 0
    }

    return resolved;
    }
};

class TemperatureRangeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TemperatureRangeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TemperatureRangeResponse
    let len;
    let data = new TemperatureRangeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'optris_drivers/TemperatureRangeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TemperatureRangeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TemperatureRangeRequest,
  Response: TemperatureRangeResponse,
  md5sum() { return '10eabfbcf8caad5dbfe2a7ee7be8570f'; },
  datatype() { return 'optris_drivers/TemperatureRange'; }
};
