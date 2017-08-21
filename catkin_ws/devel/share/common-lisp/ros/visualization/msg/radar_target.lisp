; Auto-generated. Do not edit!


(cl:in-package visualization-msg)


;//! \htmlinclude radar_target.msg.html

(cl:defclass <radar_target> (roslisp-msg-protocol:ros-message)
  ((seqID
    :reader seqID
    :initarg :seqID
    :type cl:integer
    :initform 0)
   (RADARhwTimeStamp
    :reader RADARhwTimeStamp
    :initarg :RADARhwTimeStamp
    :type cl:integer
    :initform 0)
   (rangeEstimate
    :reader rangeEstimate
    :initarg :rangeEstimate
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (velocityEstimate
    :reader velocityEstimate
    :initarg :velocityEstimate
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (amplitude
    :reader amplitude
    :initarg :amplitude
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass radar_target (<radar_target>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <radar_target>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'radar_target)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization-msg:<radar_target> is deprecated: use visualization-msg:radar_target instead.")))

(cl:ensure-generic-function 'seqID-val :lambda-list '(m))
(cl:defmethod seqID-val ((m <radar_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:seqID-val is deprecated.  Use visualization-msg:seqID instead.")
  (seqID m))

(cl:ensure-generic-function 'RADARhwTimeStamp-val :lambda-list '(m))
(cl:defmethod RADARhwTimeStamp-val ((m <radar_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:RADARhwTimeStamp-val is deprecated.  Use visualization-msg:RADARhwTimeStamp instead.")
  (RADARhwTimeStamp m))

(cl:ensure-generic-function 'rangeEstimate-val :lambda-list '(m))
(cl:defmethod rangeEstimate-val ((m <radar_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:rangeEstimate-val is deprecated.  Use visualization-msg:rangeEstimate instead.")
  (rangeEstimate m))

(cl:ensure-generic-function 'velocityEstimate-val :lambda-list '(m))
(cl:defmethod velocityEstimate-val ((m <radar_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:velocityEstimate-val is deprecated.  Use visualization-msg:velocityEstimate instead.")
  (velocityEstimate m))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <radar_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization-msg:amplitude-val is deprecated.  Use visualization-msg:amplitude instead.")
  (amplitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <radar_target>) ostream)
  "Serializes a message object of type '<radar_target>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seqID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RADARhwTimeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RADARhwTimeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RADARhwTimeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RADARhwTimeStamp)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rangeEstimate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rangeEstimate))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocityEstimate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocityEstimate))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'amplitude))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <radar_target>) istream)
  "Deserializes a message object of type '<radar_target>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seqID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RADARhwTimeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RADARhwTimeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RADARhwTimeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RADARhwTimeStamp)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rangeEstimate) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rangeEstimate)))
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
  (cl:setf (cl:slot-value msg 'velocityEstimate) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocityEstimate)))
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
  (cl:setf (cl:slot-value msg 'amplitude) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'amplitude)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<radar_target>)))
  "Returns string type for a message object of type '<radar_target>"
  "visualization/radar_target")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'radar_target)))
  "Returns string type for a message object of type 'radar_target"
  "visualization/radar_target")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<radar_target>)))
  "Returns md5sum for a message object of type '<radar_target>"
  "fbd89b12a68c9a950a123efe1f1d5712")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'radar_target)))
  "Returns md5sum for a message object of type 'radar_target"
  "fbd89b12a68c9a950a123efe1f1d5712")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<radar_target>)))
  "Returns full string definition for message of type '<radar_target>"
  (cl:format cl:nil "uint32 seqID~%uint32 RADARhwTimeStamp~%float32[] rangeEstimate~%float32[] velocityEstimate~%float32[] amplitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'radar_target)))
  "Returns full string definition for message of type 'radar_target"
  (cl:format cl:nil "uint32 seqID~%uint32 RADARhwTimeStamp~%float32[] rangeEstimate~%float32[] velocityEstimate~%float32[] amplitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <radar_target>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rangeEstimate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocityEstimate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'amplitude) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <radar_target>))
  "Converts a ROS message object to a list"
  (cl:list 'radar_target
    (cl:cons ':seqID (seqID msg))
    (cl:cons ':RADARhwTimeStamp (RADARhwTimeStamp msg))
    (cl:cons ':rangeEstimate (rangeEstimate msg))
    (cl:cons ':velocityEstimate (velocityEstimate msg))
    (cl:cons ':amplitude (amplitude msg))
))
