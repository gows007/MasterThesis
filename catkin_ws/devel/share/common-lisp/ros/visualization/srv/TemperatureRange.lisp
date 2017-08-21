; Auto-generated. Do not edit!


(cl:in-package visualization-srv)


;//! \htmlinclude TemperatureRange-request.msg.html

(cl:defclass <TemperatureRange-request> (roslisp-msg-protocol:ros-message)
  ((temperatureRangeMin
    :reader temperatureRangeMin
    :initarg :temperatureRangeMin
    :type cl:fixnum
    :initform 0)
   (temperatureRangeMax
    :reader temperatureRangeMax
    :initarg :temperatureRangeMax
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TemperatureRange-request (<TemperatureRange-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TemperatureRange-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TemperatureRange-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-srv:<TemperatureRange-request> is deprecated: use visualization-srv:TemperatureRange-request instead.")))

(cl:ensure-generic-function 'temperatureRangeMin-val :lambda-list '(m))
(cl:defmethod temperatureRangeMin-val ((m <TemperatureRange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:temperatureRangeMin-val is deprecated.  Use visualization-srv:temperatureRangeMin instead.")
  (temperatureRangeMin m))

(cl:ensure-generic-function 'temperatureRangeMax-val :lambda-list '(m))
(cl:defmethod temperatureRangeMax-val ((m <TemperatureRange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:temperatureRangeMax-val is deprecated.  Use visualization-srv:temperatureRangeMax instead.")
  (temperatureRangeMax m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TemperatureRange-request>) ostream)
  "Serializes a message object of type '<TemperatureRange-request>"
  (cl:let* ((signed (cl:slot-value msg 'temperatureRangeMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperatureRangeMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TemperatureRange-request>) istream)
  "Deserializes a message object of type '<TemperatureRange-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperatureRangeMin) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperatureRangeMax) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TemperatureRange-request>)))
  "Returns string type for a service object of type '<TemperatureRange-request>"
  "visualization/TemperatureRangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TemperatureRange-request)))
  "Returns string type for a service object of type 'TemperatureRange-request"
  "visualization/TemperatureRangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TemperatureRange-request>)))
  "Returns md5sum for a message object of type '<TemperatureRange-request>"
  "10eabfbcf8caad5dbfe2a7ee7be8570f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TemperatureRange-request)))
  "Returns md5sum for a message object of type 'TemperatureRange-request"
  "10eabfbcf8caad5dbfe2a7ee7be8570f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TemperatureRange-request>)))
  "Returns full string definition for message of type '<TemperatureRange-request>"
  (cl:format cl:nil "int16 temperatureRangeMin~%int16 temperatureRangeMax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TemperatureRange-request)))
  "Returns full string definition for message of type 'TemperatureRange-request"
  (cl:format cl:nil "int16 temperatureRangeMin~%int16 temperatureRangeMax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TemperatureRange-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TemperatureRange-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TemperatureRange-request
    (cl:cons ':temperatureRangeMin (temperatureRangeMin msg))
    (cl:cons ':temperatureRangeMax (temperatureRangeMax msg))
))
;//! \htmlinclude TemperatureRange-response.msg.html

(cl:defclass <TemperatureRange-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TemperatureRange-response (<TemperatureRange-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TemperatureRange-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TemperatureRange-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-srv:<TemperatureRange-response> is deprecated: use visualization-srv:TemperatureRange-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TemperatureRange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:success-val is deprecated.  Use visualization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TemperatureRange-response>) ostream)
  "Serializes a message object of type '<TemperatureRange-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TemperatureRange-response>) istream)
  "Deserializes a message object of type '<TemperatureRange-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TemperatureRange-response>)))
  "Returns string type for a service object of type '<TemperatureRange-response>"
  "visualization/TemperatureRangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TemperatureRange-response)))
  "Returns string type for a service object of type 'TemperatureRange-response"
  "visualization/TemperatureRangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TemperatureRange-response>)))
  "Returns md5sum for a message object of type '<TemperatureRange-response>"
  "10eabfbcf8caad5dbfe2a7ee7be8570f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TemperatureRange-response)))
  "Returns md5sum for a message object of type 'TemperatureRange-response"
  "10eabfbcf8caad5dbfe2a7ee7be8570f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TemperatureRange-response>)))
  "Returns full string definition for message of type '<TemperatureRange-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TemperatureRange-response)))
  "Returns full string definition for message of type 'TemperatureRange-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TemperatureRange-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TemperatureRange-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TemperatureRange-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TemperatureRange)))
  'TemperatureRange-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TemperatureRange)))
  'TemperatureRange-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TemperatureRange)))
  "Returns string type for a service object of type '<TemperatureRange>"
  "visualization/TemperatureRange")