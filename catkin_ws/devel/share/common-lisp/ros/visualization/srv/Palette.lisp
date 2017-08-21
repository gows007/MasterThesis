; Auto-generated. Do not edit!


(cl:in-package visualization-srv)


;//! \htmlinclude Palette-request.msg.html

(cl:defclass <Palette-request> (roslisp-msg-protocol:ros-message)
  ((palette
    :reader palette
    :initarg :palette
    :type cl:fixnum
    :initform 0)
   (paletteScaling
    :reader paletteScaling
    :initarg :paletteScaling
    :type cl:fixnum
    :initform 0)
   (temperatureMin
    :reader temperatureMin
    :initarg :temperatureMin
    :type cl:float
    :initform 0.0)
   (temperatureMax
    :reader temperatureMax
    :initarg :temperatureMax
    :type cl:float
    :initform 0.0))
)

(cl:defclass Palette-request (<Palette-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Palette-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Palette-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-srv:<Palette-request> is deprecated: use visualization-srv:Palette-request instead.")))

(cl:ensure-generic-function 'palette-val :lambda-list '(m))
(cl:defmethod palette-val ((m <Palette-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:palette-val is deprecated.  Use visualization-srv:palette instead.")
  (palette m))

(cl:ensure-generic-function 'paletteScaling-val :lambda-list '(m))
(cl:defmethod paletteScaling-val ((m <Palette-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:paletteScaling-val is deprecated.  Use visualization-srv:paletteScaling instead.")
  (paletteScaling m))

(cl:ensure-generic-function 'temperatureMin-val :lambda-list '(m))
(cl:defmethod temperatureMin-val ((m <Palette-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:temperatureMin-val is deprecated.  Use visualization-srv:temperatureMin instead.")
  (temperatureMin m))

(cl:ensure-generic-function 'temperatureMax-val :lambda-list '(m))
(cl:defmethod temperatureMax-val ((m <Palette-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:temperatureMax-val is deprecated.  Use visualization-srv:temperatureMax instead.")
  (temperatureMax m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Palette-request>) ostream)
  "Serializes a message object of type '<Palette-request>"
  (cl:let* ((signed (cl:slot-value msg 'palette)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'paletteScaling)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperatureMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperatureMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Palette-request>) istream)
  "Deserializes a message object of type '<Palette-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'palette) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'paletteScaling) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperatureMin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperatureMax) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Palette-request>)))
  "Returns string type for a service object of type '<Palette-request>"
  "visualization/PaletteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Palette-request)))
  "Returns string type for a service object of type 'Palette-request"
  "visualization/PaletteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Palette-request>)))
  "Returns md5sum for a message object of type '<Palette-request>"
  "cd6f35b272f9ce0ceb0409de9795cd7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Palette-request)))
  "Returns md5sum for a message object of type 'Palette-request"
  "cd6f35b272f9ce0ceb0409de9795cd7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Palette-request>)))
  "Returns full string definition for message of type '<Palette-request>"
  (cl:format cl:nil "int16 palette~%int16 paletteScaling~%float32 temperatureMin~%float32 temperatureMax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Palette-request)))
  "Returns full string definition for message of type 'Palette-request"
  (cl:format cl:nil "int16 palette~%int16 paletteScaling~%float32 temperatureMin~%float32 temperatureMax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Palette-request>))
  (cl:+ 0
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Palette-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Palette-request
    (cl:cons ':palette (palette msg))
    (cl:cons ':paletteScaling (paletteScaling msg))
    (cl:cons ':temperatureMin (temperatureMin msg))
    (cl:cons ':temperatureMax (temperatureMax msg))
))
;//! \htmlinclude Palette-response.msg.html

(cl:defclass <Palette-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Palette-response (<Palette-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Palette-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Palette-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-srv:<Palette-response> is deprecated: use visualization-srv:Palette-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Palette-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-srv:success-val is deprecated.  Use visualization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Palette-response>) ostream)
  "Serializes a message object of type '<Palette-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Palette-response>) istream)
  "Deserializes a message object of type '<Palette-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Palette-response>)))
  "Returns string type for a service object of type '<Palette-response>"
  "visualization/PaletteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Palette-response)))
  "Returns string type for a service object of type 'Palette-response"
  "visualization/PaletteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Palette-response>)))
  "Returns md5sum for a message object of type '<Palette-response>"
  "cd6f35b272f9ce0ceb0409de9795cd7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Palette-response)))
  "Returns md5sum for a message object of type 'Palette-response"
  "cd6f35b272f9ce0ceb0409de9795cd7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Palette-response>)))
  "Returns full string definition for message of type '<Palette-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Palette-response)))
  "Returns full string definition for message of type 'Palette-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Palette-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Palette-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Palette-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Palette)))
  'Palette-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Palette)))
  'Palette-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Palette)))
  "Returns string type for a service object of type '<Palette>"
  "visualization/Palette")