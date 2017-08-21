;; Auto-generated. Do not edit!


(when (boundp 'sensor_synch_drivers::FeuerWeRRStartAquistion)
  (if (not (find-package "SENSOR_SYNCH_DRIVERS"))
    (make-package "SENSOR_SYNCH_DRIVERS"))
  (shadow 'FeuerWeRRStartAquistion (find-package "SENSOR_SYNCH_DRIVERS")))
(unless (find-package "SENSOR_SYNCH_DRIVERS::FEUERWERRSTARTAQUISTION")
  (make-package "SENSOR_SYNCH_DRIVERS::FEUERWERRSTARTAQUISTION"))
(unless (find-package "SENSOR_SYNCH_DRIVERS::FEUERWERRSTARTAQUISTIONREQUEST")
  (make-package "SENSOR_SYNCH_DRIVERS::FEUERWERRSTARTAQUISTIONREQUEST"))
(unless (find-package "SENSOR_SYNCH_DRIVERS::FEUERWERRSTARTAQUISTIONRESPONSE")
  (make-package "SENSOR_SYNCH_DRIVERS::FEUERWERRSTARTAQUISTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass sensor_synch_drivers::FeuerWeRRStartAquistionRequest
  :super ros::object
  :slots (_header _radar_start _ir_start ))

(defmethod sensor_synch_drivers::FeuerWeRRStartAquistionRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radar_start __radar_start) nil)
    ((:ir_start __ir_start) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _radar_start __radar_start)
   (setq _ir_start __ir_start)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radar_start
   (&optional __radar_start)
   (if __radar_start (setq _radar_start __radar_start)) _radar_start)
  (:ir_start
   (&optional __ir_start)
   (if __ir_start (setq _ir_start __ir_start)) _ir_start)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _radar_start
    1
    ;; bool _ir_start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _radar_start
       (if _radar_start (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_start
       (if _ir_start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _radar_start
     (setq _radar_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_start
     (setq _ir_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sensor_synch_drivers::FeuerWeRRStartAquistionResponse
  :super ros::object
  :slots ())

(defmethod sensor_synch_drivers::FeuerWeRRStartAquistionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sensor_synch_drivers::FeuerWeRRStartAquistion
  :super ros::object
  :slots ())

(setf (get sensor_synch_drivers::FeuerWeRRStartAquistion :md5sum-) "a148093116093404300600142971a26c")
(setf (get sensor_synch_drivers::FeuerWeRRStartAquistion :datatype-) "sensor_synch_drivers/FeuerWeRRStartAquistion")
(setf (get sensor_synch_drivers::FeuerWeRRStartAquistion :request) sensor_synch_drivers::FeuerWeRRStartAquistionRequest)
(setf (get sensor_synch_drivers::FeuerWeRRStartAquistion :response) sensor_synch_drivers::FeuerWeRRStartAquistionResponse)

(defmethod sensor_synch_drivers::FeuerWeRRStartAquistionRequest
  (:response () (instance sensor_synch_drivers::FeuerWeRRStartAquistionResponse :init)))

(setf (get sensor_synch_drivers::FeuerWeRRStartAquistionRequest :md5sum-) "a148093116093404300600142971a26c")
(setf (get sensor_synch_drivers::FeuerWeRRStartAquistionRequest :datatype-) "sensor_synch_drivers/FeuerWeRRStartAquistionRequest")
(setf (get sensor_synch_drivers::FeuerWeRRStartAquistionRequest :definition-)
      "Header header
bool radar_start
bool ir_start


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
---
")

(setf (get sensor_synch_drivers::FeuerWeRRStartAquistionResponse :md5sum-) "a148093116093404300600142971a26c")
(setf (get sensor_synch_drivers::FeuerWeRRStartAquistionResponse :datatype-) "sensor_synch_drivers/FeuerWeRRStartAquistionResponse")
(setf (get sensor_synch_drivers::FeuerWeRRStartAquistionResponse :definition-)
      "Header header
bool radar_start
bool ir_start


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
---
")



(provide :sensor_synch_drivers/FeuerWeRRStartAquistion "a148093116093404300600142971a26c")


