; Auto-generated. Do not edit!


(cl:in-package sensor_synch_drivers-srv)


;//! \htmlinclude FeuerWeRRStartAquistion-request.msg.html

(cl:defclass <FeuerWeRRStartAquistion-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (radar_start
    :reader radar_start
    :initarg :radar_start
    :type cl:boolean
    :initform cl:nil)
   (ir_start
    :reader ir_start
    :initarg :ir_start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FeuerWeRRStartAquistion-request (<FeuerWeRRStartAquistion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeuerWeRRStartAquistion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeuerWeRRStartAquistion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_synch_drivers-srv:<FeuerWeRRStartAquistion-request> is deprecated: use sensor_synch_drivers-srv:FeuerWeRRStartAquistion-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FeuerWeRRStartAquistion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-srv:header-val is deprecated.  Use sensor_synch_drivers-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'radar_start-val :lambda-list '(m))
(cl:defmethod radar_start-val ((m <FeuerWeRRStartAquistion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-srv:radar_start-val is deprecated.  Use sensor_synch_drivers-srv:radar_start instead.")
  (radar_start m))

(cl:ensure-generic-function 'ir_start-val :lambda-list '(m))
(cl:defmethod ir_start-val ((m <FeuerWeRRStartAquistion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_synch_drivers-srv:ir_start-val is deprecated.  Use sensor_synch_drivers-srv:ir_start instead.")
  (ir_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeuerWeRRStartAquistion-request>) ostream)
  "Serializes a message object of type '<FeuerWeRRStartAquistion-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'radar_start) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeuerWeRRStartAquistion-request>) istream)
  "Deserializes a message object of type '<FeuerWeRRStartAquistion-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'radar_start) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeuerWeRRStartAquistion-request>)))
  "Returns string type for a service object of type '<FeuerWeRRStartAquistion-request>"
  "sensor_synch_drivers/FeuerWeRRStartAquistionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeuerWeRRStartAquistion-request)))
  "Returns string type for a service object of type 'FeuerWeRRStartAquistion-request"
  "sensor_synch_drivers/FeuerWeRRStartAquistionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeuerWeRRStartAquistion-request>)))
  "Returns md5sum for a message object of type '<FeuerWeRRStartAquistion-request>"
  "a148093116093404300600142971a26c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeuerWeRRStartAquistion-request)))
  "Returns md5sum for a message object of type 'FeuerWeRRStartAquistion-request"
  "a148093116093404300600142971a26c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeuerWeRRStartAquistion-request>)))
  "Returns full string definition for message of type '<FeuerWeRRStartAquistion-request>"
  (cl:format cl:nil "Header header~%bool radar_start~%bool ir_start~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeuerWeRRStartAquistion-request)))
  "Returns full string definition for message of type 'FeuerWeRRStartAquistion-request"
  (cl:format cl:nil "Header header~%bool radar_start~%bool ir_start~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeuerWeRRStartAquistion-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeuerWeRRStartAquistion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FeuerWeRRStartAquistion-request
    (cl:cons ':header (header msg))
    (cl:cons ':radar_start (radar_start msg))
    (cl:cons ':ir_start (ir_start msg))
))
;//! \htmlinclude FeuerWeRRStartAquistion-response.msg.html

(cl:defclass <FeuerWeRRStartAquistion-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FeuerWeRRStartAquistion-response (<FeuerWeRRStartAquistion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeuerWeRRStartAquistion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeuerWeRRStartAquistion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_synch_drivers-srv:<FeuerWeRRStartAquistion-response> is deprecated: use sensor_synch_drivers-srv:FeuerWeRRStartAquistion-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeuerWeRRStartAquistion-response>) ostream)
  "Serializes a message object of type '<FeuerWeRRStartAquistion-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeuerWeRRStartAquistion-response>) istream)
  "Deserializes a message object of type '<FeuerWeRRStartAquistion-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeuerWeRRStartAquistion-response>)))
  "Returns string type for a service object of type '<FeuerWeRRStartAquistion-response>"
  "sensor_synch_drivers/FeuerWeRRStartAquistionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeuerWeRRStartAquistion-response)))
  "Returns string type for a service object of type 'FeuerWeRRStartAquistion-response"
  "sensor_synch_drivers/FeuerWeRRStartAquistionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeuerWeRRStartAquistion-response>)))
  "Returns md5sum for a message object of type '<FeuerWeRRStartAquistion-response>"
  "a148093116093404300600142971a26c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeuerWeRRStartAquistion-response)))
  "Returns md5sum for a message object of type 'FeuerWeRRStartAquistion-response"
  "a148093116093404300600142971a26c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeuerWeRRStartAquistion-response>)))
  "Returns full string definition for message of type '<FeuerWeRRStartAquistion-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeuerWeRRStartAquistion-response)))
  "Returns full string definition for message of type 'FeuerWeRRStartAquistion-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeuerWeRRStartAquistion-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeuerWeRRStartAquistion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FeuerWeRRStartAquistion-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FeuerWeRRStartAquistion)))
  'FeuerWeRRStartAquistion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FeuerWeRRStartAquistion)))
  'FeuerWeRRStartAquistion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeuerWeRRStartAquistion)))
  "Returns string type for a service object of type '<FeuerWeRRStartAquistion>"
  "sensor_synch_drivers/FeuerWeRRStartAquistion")