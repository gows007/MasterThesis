; Auto-generated. Do not edit!


(cl:in-package visualization-msg)


;//! \htmlinclude FeuerIRImage.msg.html

(cl:defclass <FeuerIRImage> (roslisp-msg-protocol:ros-message)
  ((irimage
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-msg:<FeuerIRImage> is deprecated: use visualization-msg:FeuerIRImage instead.")))

(cl:ensure-generic-function 'irimage-val :lambda-list '(m))
(cl:defmethod irimage-val ((m <FeuerIRImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:irimage-val is deprecated.  Use visualization-msg:irimage instead.")
  (irimage m))

(cl:ensure-generic-function 'feuertime-val :lambda-list '(m))
(cl:defmethod feuertime-val ((m <FeuerIRImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:feuertime-val is deprecated.  Use visualization-msg:feuertime instead.")
  (feuertime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeuerIRImage>) ostream)
  "Serializes a message object of type '<FeuerIRImage>"
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
  "visualization/FeuerIRImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeuerIRImage)))
  "Returns string type for a message object of type 'FeuerIRImage"
  "visualization/FeuerIRImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeuerIRImage>)))
  "Returns md5sum for a message object of type '<FeuerIRImage>"
  "5d194b13f30e4de6e279a584eed93ac0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeuerIRImage)))
  "Returns md5sum for a message object of type 'FeuerIRImage"
  "5d194b13f30e4de6e279a584eed93ac0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeuerIRImage>)))
  "Returns full string definition for message of type '<FeuerIRImage>"
  (cl:format cl:nil "sensor_msgs/Image irimage~%time feuertime~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeuerIRImage)))
  "Returns full string definition for message of type 'FeuerIRImage"
  (cl:format cl:nil "sensor_msgs/Image irimage~%time feuertime~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeuerIRImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'irimage))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeuerIRImage>))
  "Converts a ROS message object to a list"
  (cl:list 'FeuerIRImage
    (cl:cons ':irimage (irimage msg))
    (cl:cons ':feuertime (feuertime msg))
))
