; Auto-generated. Do not edit!


(cl:in-package sensor_synch_drivers-msg)


;//! \htmlinclude FeuerIRImage.msg.html

(cl:defclass <FeuerIRImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (irimage
    :reader irimage
    :initarg :irimage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (feuertime
    :reader feuertime
    :initarg :feuertime
    :type cl:real
    :initform 0))
)

(cl:defclass FeuerIRImage (<FeuerIRImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeuerIRImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeuerIRImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_synch_drivers-msg:<FeuerIRImage> is deprecated: use sensor_synch_drivers-msg:FeuerIRImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FeuerIRImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:header-val is deprecated.  Use sensor_synch_drivers-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'irimage-val :lambda-list '(m))
(cl:defmethod irimage-val ((m <FeuerIRImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:irimage-val is deprecated.  Use sensor_synch_drivers-msg:irimage instead.")
  (irimage m))

(cl:ensure-generic-function 'feuertime-val :lambda-list '(m))
(cl:defmethod feuertime-val ((m <FeuerIRImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:feuertime-val is deprecated.  Use sensor_synch_drivers-msg:feuertime instead.")
  (feuertime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeuerIRImage>) ostream)
  "Serializes a message object of type '<FeuerIRImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'irimage) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'feuertime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'feuertime) (cl:floor (cl:slot-value msg 'feuertime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeuerIRImage>) istream)
  "Deserializes a message object of type '<FeuerIRImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'irimage) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feuertime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeuerIRImage>)))
  "Returns string type for a message object of type '<FeuerIRImage>"
  "sensor_synch_drivers/FeuerIRImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeuerIRImage)))
  "Returns string type for a message object of type 'FeuerIRImage"
  "sensor_synch_drivers/FeuerIRImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeuerIRImage>)))
  "Returns md5sum for a message object of type '<FeuerIRImage>"
  "4ca0c834ef4bb930d413675e62bb5f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeuerIRImage)))
  "Returns md5sum for a message object of type 'FeuerIRImage"
  "4ca0c834ef4bb930d413675e62bb5f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeuerIRImage>)))
  "Returns full string definition for message of type '<FeuerIRImage>"
  (cl:format cl:nil "Header header~%sensor_msgs/Image irimage~%time feuertime~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeuerIRImage)))
  "Returns full string definition for message of type 'FeuerIRImage"
  (cl:format cl:nil "Header header~%sensor_msgs/Image irimage~%time feuertime~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeuerIRImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'irimage))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeuerIRImage>))
  "Converts a ROS message object to a list"
  (cl:list 'FeuerIRImage
    (cl:cons ':header (header msg))
    (cl:cons ':irimage (irimage msg))
    (cl:cons ':feuertime (feuertime msg))
))
