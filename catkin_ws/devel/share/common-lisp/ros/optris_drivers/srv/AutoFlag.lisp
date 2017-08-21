; Auto-generated. Do not edit!


(cl:in-package optris_drivers-srv)


;//! \htmlinclude AutoFlag-request.msg.html

(cl:defclass <AutoFlag-request> (roslisp-msg-protocol:ros-message)
  ((autoFlag
    :reader autoFlag
    :initarg :autoFlag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AutoFlag-request (<AutoFlag-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoFlag-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoFlag-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name optris_drivers-srv:<AutoFlag-request> is deprecated: use optris_drivers-srv:AutoFlag-request instead.")))

(cl:ensure-generic-function 'autoFlag-val :lambda-list '(m))
(cl:defmethod autoFlag-val ((m <AutoFlag-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader optris_drivers-srv:autoFlag-val is deprecated.  Use optris_drivers-srv:autoFlag instead.")
  (autoFlag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoFlag-request>) ostream)
  "Serializes a message object of type '<AutoFlag-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'autoFlag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoFlag-request>) istream)
  "Deserializes a message object of type '<AutoFlag-request>"
    (cl:setf (cl:slot-value msg 'autoFlag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoFlag-request>)))
  "Returns string type for a service object of type '<AutoFlag-request>"
  "optris_drivers/AutoFlagRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoFlag-request)))
  "Returns string type for a service object of type 'AutoFlag-request"
  "optris_drivers/AutoFlagRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoFlag-request>)))
  "Returns md5sum for a message object of type '<AutoFlag-request>"
  "c55e7efaaabffa6dd063014d83eca6d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoFlag-request)))
  "Returns md5sum for a message object of type 'AutoFlag-request"
  "c55e7efaaabffa6dd063014d83eca6d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoFlag-request>)))
  "Returns full string definition for message of type '<AutoFlag-request>"
  (cl:format cl:nil "bool autoFlag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoFlag-request)))
  "Returns full string definition for message of type 'AutoFlag-request"
  (cl:format cl:nil "bool autoFlag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoFlag-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoFlag-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoFlag-request
    (cl:cons ':autoFlag (autoFlag msg))
))
;//! \htmlinclude AutoFlag-response.msg.html

(cl:defclass <AutoFlag-response> (roslisp-msg-protocol:ros-message)
  ((isAutoFlagActive
    :reader isAutoFlagActive
    :initarg :isAutoFlagActive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AutoFlag-response (<AutoFlag-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoFlag-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoFlag-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name optris_drivers-srv:<AutoFlag-response> is deprecated: use optris_drivers-srv:AutoFlag-response instead.")))

(cl:ensure-generic-function 'isAutoFlagActive-val :lambda-list '(m))
(cl:defmethod isAutoFlagActive-val ((m <AutoFlag-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader optris_drivers-srv:isAutoFlagActive-val is deprecated.  Use optris_drivers-srv:isAutoFlagActive instead.")
  (isAutoFlagActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoFlag-response>) ostream)
  "Serializes a message object of type '<AutoFlag-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isAutoFlagActive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoFlag-response>) istream)
  "Deserializes a message object of type '<AutoFlag-response>"
    (cl:setf (cl:slot-value msg 'isAutoFlagActive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoFlag-response>)))
  "Returns string type for a service object of type '<AutoFlag-response>"
  "optris_drivers/AutoFlagResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoFlag-response)))
  "Returns string type for a service object of type 'AutoFlag-response"
  "optris_drivers/AutoFlagResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoFlag-response>)))
  "Returns md5sum for a message object of type '<AutoFlag-response>"
  "c55e7efaaabffa6dd063014d83eca6d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoFlag-response)))
  "Returns md5sum for a message object of type 'AutoFlag-response"
  "c55e7efaaabffa6dd063014d83eca6d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoFlag-response>)))
  "Returns full string definition for message of type '<AutoFlag-response>"
  (cl:format cl:nil "bool isAutoFlagActive~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoFlag-response)))
  "Returns full string definition for message of type 'AutoFlag-response"
  (cl:format cl:nil "bool isAutoFlagActive~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoFlag-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoFlag-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoFlag-response
    (cl:cons ':isAutoFlagActive (isAutoFlagActive msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutoFlag)))
  'AutoFlag-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutoFlag)))
  'AutoFlag-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoFlag)))
  "Returns string type for a service object of type '<AutoFlag>"
  "optris_drivers/AutoFlag")