// Auto-generated. Do not edit!

// (in-package optris_drivers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class FeuerIRImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.irimage = null;
      this.feuertime = null;
    }
    else {
      if (initObj.hasOwnProperty('irimage')) {
        this.irimage = initObj.irimage
      }
      else {
        this.irimage = new sensor_msgs.msg.Image();
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
    // Serializes a message object of type FeuerIRImage
    // Serialize message field [irimage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.irimage, buffer, bufferOffset);
    // Serialize message field [feuertime]
    bufferOffset = _serializer.time(obj.feuertime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeuerIRImage
    let len;
    let data = new FeuerIRImage(null);
    // Deserialize message field [irimage]
    data.irimage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [feuertime]
    data.feuertime = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.irimage);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'optris_drivers/FeuerIRImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d194b13f30e4de6e279a584eed93ac0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image irimage
    time feuertime
    
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of cameara
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    const resolved = new FeuerIRImage(null);
    if (msg.irimage !== undefined) {
      resolved.irimage = sensor_msgs.msg.Image.Resolve(msg.irimage)
    }
    else {
      resolved.irimage = new sensor_msgs.msg.Image()
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

module.exports = FeuerIRImage;
