// Auto-generated. Do not edit!

// (in-package visualization.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PaletteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.palette = null;
      this.paletteScaling = null;
      this.temperatureMin = null;
      this.temperatureMax = null;
    }
    else {
      if (initObj.hasOwnProperty('palette')) {
        this.palette = initObj.palette
      }
      else {
        this.palette = 0;
      }
      if (initObj.hasOwnProperty('paletteScaling')) {
        this.paletteScaling = initObj.paletteScaling
      }
      else {
        this.paletteScaling = 0;
      }
      if (initObj.hasOwnProperty('temperatureMin')) {
        this.temperatureMin = initObj.temperatureMin
      }
      else {
        this.temperatureMin = 0.0;
      }
      if (initObj.hasOwnProperty('temperatureMax')) {
        this.temperatureMax = initObj.temperatureMax
      }
      else {
        this.temperatureMax = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PaletteRequest
    // Serialize message field [palette]
    bufferOffset = _serializer.int16(obj.palette, buffer, bufferOffset);
    // Serialize message field [paletteScaling]
    bufferOffset = _serializer.int16(obj.paletteScaling, buffer, bufferOffset);
    // Serialize message field [temperatureMin]
    bufferOffset = _serializer.float32(obj.temperatureMin, buffer, bufferOffset);
    // Serialize message field [temperatureMax]
    bufferOffset = _serializer.float32(obj.temperatureMax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PaletteRequest
    let len;
    let data = new PaletteRequest(null);
    // Deserialize message field [palette]
    data.palette = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [paletteScaling]
    data.paletteScaling = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temperatureMin]
    data.temperatureMin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperatureMax]
    data.temperatureMax = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'visualization/PaletteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f28136ebeed4771c7945cbcc0527c8c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 palette
    int16 paletteScaling
    float32 temperatureMin
    float32 temperatureMax
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PaletteRequest(null);
    if (msg.palette !== undefined) {
      resolved.palette = msg.palette;
    }
    else {
      resolved.palette = 0
    }

    if (msg.paletteScaling !== undefined) {
      resolved.paletteScaling = msg.paletteScaling;
    }
    else {
      resolved.paletteScaling = 0
    }

    if (msg.temperatureMin !== undefined) {
      resolved.temperatureMin = msg.temperatureMin;
    }
    else {
      resolved.temperatureMin = 0.0
    }

    if (msg.temperatureMax !== undefined) {
      resolved.temperatureMax = msg.temperatureMax;
    }
    else {
      resolved.temperatureMax = 0.0
    }

    return resolved;
    }
};

class PaletteResponse {
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
    // Serializes a message object of type PaletteResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PaletteResponse
    let len;
    let data = new PaletteResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'visualization/PaletteResponse';
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
    const resolved = new PaletteResponse(null);
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
  Request: PaletteRequest,
  Response: PaletteResponse,
  md5sum() { return 'cd6f35b272f9ce0ceb0409de9795cd7f'; },
  datatype() { return 'visualization/Palette'; }
};
