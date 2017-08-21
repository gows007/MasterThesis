; Auto-generated. Do not edit!


(cl:in-package iss_messages-msg)


;//! \htmlinclude fusion_overlay.msg.html

(cl:defclass <fusion_overlay> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_feuertime
    :reader image_feuertime
    :initarg :image_feuertime
    :type cl:real
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iss_messages-msg:<fusion_overlay> is deprecated: use iss_messages-msg:fusion_overlay instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iss_messages-msg:header-val is deprecated.  Use iss_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_feuertime-val :lambda-list '(m))
(cl:defmethod image_feuertime-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iss_messages-msg:image_feuertime-val is deprecated.  Use iss_messages-msg:image_feuertime instead.")
  (image_feuertime m))

(cl:ensure-generic-function 'fusionPoints-val :lambda-list '(m))
(cl:defmethod fusionPoints-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iss_messages-msg:fusionPoints-val is deprecated.  Use iss_messages-msg:fusionPoints instead.")
  (fusionPoints m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <fusion_overlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iss_messages-msg:range-val is deprecated.  Use iss_messages-msg:range instead.")
  (range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fusion_overlay>) ostream)
  "Serializes a message object of type '<fusion_overlay>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'image_feuertime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'image_feuertime) (cl:floor (cl:slot-value msg 'image_feuertime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_feuertime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
  "iss_messages/fusion_overlay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fusion_overlay)))
  "Returns string type for a message object of type 'fusion_overlay"
  "iss_messages/fusion_overlay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fusion_overlay>)))
  "Returns md5sum for a message object of type '<fusion_overlay>"
  "df8e1f6b30f762c4e9c76e7e87f4cfef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fusion_overlay)))
  "Returns md5sum for a message object of type 'fusion_overlay"
  "df8e1f6b30f762c4e9c76e7e87f4cfef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fusion_overlay>)))
  "Returns full string definition for message of type '<fusion_overlay>"
  (cl:format cl:nil "Header header~%time image_feuertime~%~%float32[] fusionPoints~%float32[] range~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fusion_overlay)))
  "Returns full string definition for message of type 'fusion_overlay"
  (cl:format cl:nil "Header header~%time image_feuertime~%~%float32[] fusionPoints~%float32[] range~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fusion_overlay>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fusionPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fusion_overlay>))
  "Converts a ROS message object to a list"
  (cl:list 'fusion_overlay
    (cl:cons ':header (header msg))
    (cl:cons ':image_feuertime (image_feuertime msg))
    (cl:cons ':fusionPoints (fusionPoints msg))
    (cl:cons ':range (range msg))
))
