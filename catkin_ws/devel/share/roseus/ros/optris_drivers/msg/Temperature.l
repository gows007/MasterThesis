;; Auto-generated. Do not edit!


(when (boundp 'optris_drivers::Temperature)
  (if (not (find-package "OPTRIS_DRIVERS"))
    (make-package "OPTRIS_DRIVERS"))
  (shadow 'Temperature (find-package "OPTRIS_DRIVERS")))
(unless (find-package "OPTRIS_DRIVERS::TEMPERATURE")
  (make-package "OPTRIS_DRIVERS::TEMPERATURE"))

(in-package "ROS")
;;//! \htmlinclude Temperature.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass optris_drivers::Temperature
  :super ros::object
  :slots (_header _temperature_flag _temperature_box _temperature_chip ))

(defmethod optris_drivers::Temperature
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temperature_flag __temperature_flag) 0.0)
    ((:temperature_box __temperature_box) 0.0)
    ((:temperature_chip __temperature_chip) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _temperature_flag (float __temperature_flag))
   (setq _temperature_box (float __temperature_box))
   (setq _temperature_chip (float __temperature_chip))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temperature_flag
   (&optional __temperature_flag)
   (if __temperature_flag (setq _temperature_flag __temperature_flag)) _temperature_flag)
  (:temperature_box
   (&optional __temperature_box)
   (if __temperature_box (setq _temperature_box __temperature_box)) _temperature_box)
  (:temperature_chip
   (&optional __temperature_chip)
   (if __temperature_chip (setq _temperature_chip __temperature_chip)) _temperature_chip)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _temperature_flag
    4
    ;; float32 _temperature_box
    4
    ;; float32 _temperature_chip
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _temperature_flag
       (sys::poke _temperature_flag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature_box
       (sys::poke _temperature_box (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature_chip
       (sys::poke _temperature_chip (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _temperature_flag
     (setq _temperature_flag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature_box
     (setq _temperature_box (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature_chip
     (setq _temperature_chip (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get optris_drivers::Temperature :md5sum-) "4ca2cd25d02107fe9171609096a539e1")
(setf (get optris_drivers::Temperature :datatype-) "optris_drivers/Temperature")
(setf (get optris_drivers::Temperature :definition-)
      "Header header
float32 temperature_flag
float32 temperature_box
float32 temperature_chip

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



(provide :optris_drivers/Temperature "4ca2cd25d02107fe9171609096a539e1")


