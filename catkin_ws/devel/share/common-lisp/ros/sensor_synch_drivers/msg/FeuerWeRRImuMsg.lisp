; Auto-generated. Do not edit!


(cl:in-package sensor_synch_drivers-msg)


;//! \htmlinclude FeuerWeRRImuMsg.msg.html

(cl:defclass <FeuerWeRRImuMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (imu_angular_velocity
    :reader imu_angular_velocity
    :initarg :imu_angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (imu_linear_acceleration
    :reader imu_linear_acceleration
    :initarg :imu_linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ma351_linear_acceleration
    :reader ma351_linear_acceleration
    :initarg :ma351_linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (magnetometer
    :reader magnetometer
    :initarg :magnetometer
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (feuertime
    :reader feuertime
    :initarg :feuertime
    :type cl:real
    :initform 0))
)

(cl:defclass FeuerWeRRImuMsg (<FeuerWeRRImuMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeuerWeRRImuMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeuerWeRRImuMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_synch_drivers-msg:<FeuerWeRRImuMsg> is deprecated: use sensor_synch_drivers-msg:FeuerWeRRImuMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FeuerWeRRImuMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:header-val is deprecated.  Use sensor_synch_drivers-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'imu_angular_velocity-val :lambda-list '(m))
(cl:defmethod imu_angular_velocity-val ((m <FeuerWeRRImuMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:imu_angular_velocity-val is deprecated.  Use sensor_synch_drivers-msg:imu_angular_velocity instead.")
  (imu_angular_velocity m))

(cl:ensure-generic-function 'imu_linear_acceleration-val :lambda-list '(m))
(cl:defmethod imu_linear_acceleration-val ((m <FeuerWeRRImuMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:imu_linear_acceleration-val is deprecated.  Use sensor_synch_drivers-msg:imu_linear_acceleration instead.")
  (imu_linear_acceleration m))

(cl:ensure-generic-function 'ma351_linear_acceleration-val :lambda-list '(m))
(cl:defmethod ma351_linear_acceleration-val ((m <FeuerWeRRImuMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:ma351_linear_acceleration-val is deprecated.  Use sensor_synch_drivers-msg:ma351_linear_acceleration instead.")
  (ma351_linear_acceleration m))

(cl:ensure-generic-function 'magnetometer-val :lambda-list '(m))
(cl:defmethod magnetometer-val ((m <FeuerWeRRImuMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:magnetometer-val is deprecated.  Use sensor_synch_drivers-msg:magnetometer instead.")
  (magnetometer m))

(cl:ensure-generic-function 'feuertime-val :lambda-list '(m))
(cl:defmethod feuertime-val ((m <FeuerWeRRImuMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-msg:feuertime-val is deprecated.  Use sensor_synch_drivers-msg:feuertime instead.")
  (feuertime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeuerWeRRImuMsg>) ostream)
  "Serializes a message object of type '<FeuerWeRRImuMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu_angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu_linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ma351_linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'magnetometer) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeuerWeRRImuMsg>) istream)
  "Deserializes a message object of type '<FeuerWeRRImuMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu_angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu_linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ma351_linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'magnetometer) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeuerWeRRImuMsg>)))
  "Returns string type for a message object of type '<FeuerWeRRImuMsg>"
  "sensor_synch_drivers/FeuerWeRRImuMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeuerWeRRImuMsg)))
  "Returns string type for a message object of type 'FeuerWeRRImuMsg"
  "sensor_synch_drivers/FeuerWeRRImuMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeuerWeRRImuMsg>)))
  "Returns md5sum for a message object of type '<FeuerWeRRImuMsg>"
  "dee61ce08b0d15cae6217dbe3037c1bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeuerWeRRImuMsg)))
  "Returns md5sum for a message object of type 'FeuerWeRRImuMsg"
  "dee61ce08b0d15cae6217dbe3037c1bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeuerWeRRImuMsg>)))
  "Returns full string definition for message of type '<FeuerWeRRImuMsg>"
  (cl:format cl:nil "# This is a message to hold data from the FeuerWeRR (Inertial Measurement Unit)~%~%Header header~%geometry_msgs/Vector3 imu_angular_velocity~%geometry_msgs/Vector3 imu_linear_acceleration~%geometry_msgs/Vector3 ma351_linear_acceleration~%geometry_msgs/Vector3 magnetometer~%time feuertime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeuerWeRRImuMsg)))
  "Returns full string definition for message of type 'FeuerWeRRImuMsg"
  (cl:format cl:nil "# This is a message to hold data from the FeuerWeRR (Inertial Measurement Unit)~%~%Header header~%geometry_msgs/Vector3 imu_angular_velocity~%geometry_msgs/Vector3 imu_linear_acceleration~%geometry_msgs/Vector3 ma351_linear_acceleration~%geometry_msgs/Vector3 magnetometer~%time feuertime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeuerWeRRImuMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu_angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu_linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ma351_linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'magnetometer))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeuerWeRRImuMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'FeuerWeRRImuMsg
    (cl:cons ':header (header msg))
    (cl:cons ':imu_angular_velocity (imu_angular_velocity msg))
    (cl:cons ':imu_linear_acceleration (imu_linear_acceleration msg))
    (cl:cons ':ma351_linear_acceleration (ma351_linear_acceleration msg))
    (cl:cons ':magnetometer (magnetometer msg))
    (cl:cons ':feuertime (feuertime msg))
))
