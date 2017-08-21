; Auto-generated. Do not edit!


(cl:in-package visualization-msg)


;//! \htmlinclude fusion_overlay.msg.html

(cl:defclass <fusion_overlay> (roslisp-msg-protocol:ros-message)
  ((seqID
    :reader seqID
    :initarg :seqID
    :type cl:integer
    :initform 0)
   (imageHwTimeStamp
    :reader imageHwTimeStamp
    :initarg :imageHwTimeStamp
    :type cl:integer
    :initform 0)
   (fusionPoints
    :reader fusionPoints
    :initarg :fusionPoints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (range
    :reader range
    :initarg :range
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass fusion_overlay (<fusion_overlay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fusion_overlay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fusion_overlay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-msg:<fusion_overlay> is deprecated: use visualization-msg:fusion_overlay instead.")))

(cl:ensure-generic-function 'seqID-val :lambda-list '(m))
(cl:defmethod seqID-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:seqID-val is deprecated.  Use visualization-msg:seqID instead.")
  (seqID m))

(cl:ensure-generic-function 'imageHwTimeStamp-val :lambda-list '(m))
(cl:defmethod imageHwTimeStamp-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:imageHwTimeStamp-val is deprecated.  Use visualization-msg:imageHwTimeStamp instead.")
  (imageHwTimeStamp m))

(cl:ensure-generic-function 'fusionPoints-val :lambda-list '(m))
(cl:defmethod fusionPoints-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:fusionPoints-val is deprecated.  Use visualization-msg:fusionPoints instead.")
  (fusionPoints m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:range-val is deprecated.  Use visualization-msg:range instead.")
  (range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fusion_overlay>) ostream)
  "Serializes a message object of type '<fusion_overlay>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imageHwTimeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imageHwTimeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imageHwTimeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imageHwTimeStamp)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fusionPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'fusionPoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'range))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fusion_overlay>) istream)
  "Deserializes a message object of type '<fusion_overlay>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imageHwTimeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imageHwTimeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imageHwTimeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imageHwTimeStamp)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fusionPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fusionPoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'range) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'range)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fusion_overlay>)))
  "Returns string type for a message object of type '<fusion_overlay>"
  "visualization/fusion_overlay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fusion_overlay)))
  "Returns string type for a message object of type 'fusion_overlay"
  "visualization/fusion_overlay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fusion_overlay>)))
  "Returns md5sum for a message object of type '<fusion_overlay>"
  "a5519680eaf65b54a21dd39863066fb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fusion_overlay)))
  "Returns md5sum for a message object of type 'fusion_overlay"
  "a5519680eaf65b54a21dd39863066fb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fusion_overlay>)))
  "Returns full string definition for message of type '<fusion_overlay>"
  (cl:format cl:nil "uint32 seqID~%uint32 imageHwTimeStamp~%float32[] fusionPoints~%float32[] range~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fusion_overlay)))
  "Returns full string definition for message of type 'fusion_overlay"
  (cl:format cl:nil "uint32 seqID~%uint32 imageHwTimeStamp~%float32[] fusionPoints~%float32[] range~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fusion_overlay>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fusionPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fusion_overlay>))
  "Converts a ROS message object to a list"
  (cl:list 'fusion_overlay
    (cl:cons ':seqID (seqID msg))
    (cl:cons ':imageHwTimeStamp (imageHwTimeStamp msg))
    (cl:cons ':fusionPoints (fusionPoints msg))
    (cl:cons ':range (range msg))
))
