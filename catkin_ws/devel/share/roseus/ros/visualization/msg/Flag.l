;; Auto-generated. Do not edit!


(when (boundp 'visualization::Flag)
  (if (not (find-package "VISUALIZATION"))
    (make-package "VISUALIZATION"))
  (shadow 'Flag (find-package "VISUALIZATION")))
(unless (find-package "VISUALIZATION::FLAG")
  (make-package "VISUALIZATION::FLAG"))

(in-package "ROS")
;;//! \htmlinclude Flag.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visualization::Flag
  :super ros::object
  :slots (_header _flag_state ))

(defmethod visualization::Flag
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:flag_state __flag_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _flag_state (round __flag_state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:flag_state
   (&optional __flag_state)
   (if __flag_state (setq _flag_state __flag_state)) _flag_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _flag_state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _flag_state
       (write-long _flag_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _flag_state
     (setq _flag_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get visualization::Flag :md5sum-) "f597ac104f060c6dbdfc5b2ca0fddd8b")
(setf (get visualization::Flag :datatype-) "visualization/Flag")
(setf (get visualization::Flag :definition-)
      "Header header
uint32 flag_state

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :visualization/Flag "f597ac104f060c6dbdfc5b2ca0fddd8b")


