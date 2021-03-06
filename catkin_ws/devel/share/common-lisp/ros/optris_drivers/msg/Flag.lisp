; Auto-generated. Do not edit!


(cl:in-package optris_drivers-msg)


;//! \htmlinclude Flag.msg.html

(cl:defclass <Flag> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (flag_state
    :reader flag_state
    :initarg :flag_state
    :type cl:integer
    :initform 0))
)

(cl:defclass Flag (<Flag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name optris_drivers-msg:<Flag> is deprecated: use optris_drivers-msg:Flag instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Flag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader optris_drivers-msg:header-val is deprecated.  Use optris_drivers-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'flag_state-val :lambda-list '(m))
(cl:defmethod flag_state-val ((m <Flag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader optris_drivers-msg:flag_state-val is deprecated.  Use optris_drivers-msg:flag_state instead.")
  (flag_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flag>) ostream)
  "Serializes a message object of type '<Flag>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flag>) istream)
  "Deserializes a message object of type '<Flag>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flag>)))
  "Returns string type for a message object of type '<Flag>"
  "optris_drivers/Flag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flag)))
  "Returns string type for a message object of type 'Flag"
  "optris_drivers/Flag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flag>)))
  "Returns md5sum for a message object of type '<Flag>"
  "f597ac104f060c6dbdfc5b2ca0fddd8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flag)))
  "Returns md5sum for a message object of type 'Flag"
  "f597ac104f060c6dbdfc5b2ca0fddd8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flag>)))
  "Returns full string definition for message of type '<Flag>"
  (cl:format cl:nil "Header header~%uint32 flag_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flag)))
  "Returns full string definition for message of type 'Flag"
  (cl:format cl:nil "Header header~%uint32 flag_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flag>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flag>))
  "Converts a ROS message object to a list"
  (cl:list 'Flag
    (cl:cons ':header (header msg))
    (cl:cons ':flag_state (flag_state msg))
))
