;; Auto-generated. Do not edit!


(when (boundp 'iss_messages::radar_target)
  (if (not (find-package "ISS_MESSAGES"))
    (make-package "ISS_MESSAGES"))
  (shadow 'radar_target (find-package "ISS_MESSAGES")))
(unless (find-package "ISS_MESSAGES::RADAR_TARGET")
  (make-package "ISS_MESSAGES::RADAR_TARGET"))

(in-package "ROS")
;;//! \htmlinclude radar_target.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iss_messages::radar_target
  :super ros::object
  :slots (_header _radar_feuertime _rangeEstimate _velocityEstimate _amplitude ))

(defmethod iss_messages::radar_target
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radar_feuertime __radar_feuertime) (instance ros::time :init))
    ((:rangeEstimate __rangeEstimate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocityEstimate __velocityEstimate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:amplitude __amplitude) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _radar_feuertime __radar_feuertime)
   (setq _rangeEstimate __rangeEstimate)
   (setq _velocityEstimate __velocityEstimate)
   (setq _amplitude __amplitude)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radar_feuertime
   (&optional __radar_feuertime)
   (if __radar_feuertime (setq _radar_feuertime __radar_feuertime)) _radar_feuertime)
  (:rangeEstimate
   (&optional __rangeEstimate)
   (if __rangeEstimate (setq _rangeEstimate __rangeEstimate)) _rangeEstimate)
  (:velocityEstimate
   (&optional __velocityEstimate)
   (if __velocityEstimate (setq _velocityEstimate __velocityEstimate)) _velocityEstimate)
  (:amplitude
   (&optional __amplitude)
   (if __amplitude (setq _amplitude __amplitude)) _amplitude)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _radar_feuertime
    8
    ;; float32[] _rangeEstimate
    (* 4    (length _rangeEstimate)) 4
    ;; float32[] _velocityEstimate
    (* 4    (length _velocityEstimate)) 4
    ;; float32[] _amplitude
    (* 4    (length _amplitude)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _radar_feuertime
       (write-long (send _radar_feuertime :sec) s) (write-long (send _radar_feuertime :nsec) s)
     ;; float32[] _rangeEstimate
     (write-long (length _rangeEstimate) s)
     (dotimes (i (length _rangeEstimate))
       (sys::poke (elt _rangeEstimate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocityEstimate
     (write-long (length _velocityEstimate) s)
     (dotimes (i (length _velocityEstimate))
       (sys::poke (elt _velocityEstimate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _amplitude
     (write-long (length _amplitude) s)
     (dotimes (i (length _amplitude))
       (sys::poke (elt _amplitude i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _radar_feuertime
     (send _radar_feuertime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _radar_feuertime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _rangeEstimate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rangeEstimate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rangeEstimate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocityEstimate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocityEstimate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocityEstimate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _amplitude
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _amplitude (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _amplitude i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get iss_messages::radar_target :md5sum-) "76fe86515993ef411b4797c8ff5dbde8")
(setf (get iss_messages::radar_target :datatype-) "iss_messages/radar_target")
(setf (get iss_messages::radar_target :definition-)
      "Header header
time radar_feuertime

float32[] rangeEstimate
float32[] velocityEstimate
float32[] amplitude


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



(provide :iss_messages/radar_target "76fe86515993ef411b4797c8ff5dbde8")


