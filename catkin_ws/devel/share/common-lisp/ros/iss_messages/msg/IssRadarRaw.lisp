; Auto-generated. Do not edit!


(cl:in-package iss_messages-msg)


;//! \htmlinclude IssRadarRaw.msg.html

(cl:defclass <IssRadarRaw> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (IQmsg
    :reader IQmsg
    :initarg :IQmsg
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray))
   (feuertime
    :reader feuertime
    :initarg :feuertime
    :type cl:real
    :initform 0))
)

(cl:defclass IssRadarRaw (<IssRadarRaw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IssRadarRaw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IssRadarRaw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iss_messages-msg:<IssRadarRaw> is deprecated: use iss_messages-msg:IssRadarRaw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IssRadarRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iss_messages-msg:header-val is deprecated.  Use iss_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'IQmsg-val :lambda-list '(m))
(cl:defmethod IQmsg-val ((m <IssRadarRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iss_messages-msg:IQmsg-val is deprecated.  Use iss_messages-msg:IQmsg instead.")
  (IQmsg m))

(cl:ensure-generic-function 'feuertime-val :lambda-list '(m))
(cl:defmethod feuertime-val ((m <IssRadarRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iss_messages-msg:feuertime-val is deprecated.  Use iss_messages-msg:feuertime instead.")
  (feuertime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IssRadarRaw>) ostream)
  "Serializes a message object of type '<IssRadarRaw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'IQmsg) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IssRadarRaw>) istream)
  "Deserializes a message object of type '<IssRadarRaw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'IQmsg) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IssRadarRaw>)))
  "Returns string type for a message object of type '<IssRadarRaw>"
  "iss_messages/IssRadarRaw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IssRadarRaw)))
  "Returns string type for a message object of type 'IssRadarRaw"
  "iss_messages/IssRadarRaw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IssRadarRaw>)))
  "Returns md5sum for a message object of type '<IssRadarRaw>"
  "250473b5f06b61cc9cc2b51f778cfd57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IssRadarRaw)))
  "Returns md5sum for a message object of type 'IssRadarRaw"
  "250473b5f06b61cc9cc2b51f778cfd57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IssRadarRaw>)))
  "Returns full string definition for message of type '<IssRadarRaw>"
  (cl:format cl:nil "# This is a message to hold data from the Radar Sensor~%~%Header header~%std_msgs/Float32MultiArray IQmsg~%time feuertime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IssRadarRaw)))
  "Returns full string definition for message of type 'IssRadarRaw"
  (cl:format cl:nil "# This is a message to hold data from the Radar Sensor~%~%Header header~%std_msgs/Float32MultiArray IQmsg~%time feuertime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IssRadarRaw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'IQmsg))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IssRadarRaw>))
  "Converts a ROS message object to a list"
  (cl:list 'IssRadarRaw
    (cl:cons ':header (header msg))
    (cl:cons ':IQmsg (IQmsg msg))
    (cl:cons ':feuertime (feuertime msg))
))
