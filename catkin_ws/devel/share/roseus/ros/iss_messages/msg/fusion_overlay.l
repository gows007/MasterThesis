;; Auto-generated. Do not edit!


(when (boundp 'iss_messages::fusion_overlay)
  (if (not (find-package "ISS_MESSAGES"))
    (make-package "ISS_MESSAGES"))
  (shadow 'fusion_overlay (find-package "ISS_MESSAGES")))
(unless (find-package "ISS_MESSAGES::FUSION_OVERLAY")
  (make-package "ISS_MESSAGES::FUSION_OVERLAY"))

(in-package "ROS")
;;//! \htmlinclude fusion_overlay.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iss_messages::fusion_overlay
  :super ros::object
  :slots (_header _image_feuertime _fusionPoints _range ))

(defmethod iss_messages::fusion_overlay
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_feuertime __image_feuertime) (instance ros::time :init))
    ((:fusionPoints __fusionPoints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:range __range) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_feuertime __image_feuertime)
   (setq _fusionPoints __fusionPoints)
   (setq _range __range)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_feuertime
   (&optional __image_feuertime)
   (if __image_feuertime (setq _image_feuertime __image_feuertime)) _image_feuertime)
  (:fusionPoints
   (&optional __fusionPoints)
   (if __fusionPoints (setq _fusionPoints __fusionPoints)) _fusionPoints)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _image_feuertime
    8
    ;; float32[] _fusionPoints
    (* 4    (length _fusionPoints)) 4
    ;; float32[] _range
    (* 4    (length _range)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _image_feuertime
       (write-long (send _image_feuertime :sec) s) (write-long (send _image_feuertime :nsec) s)
     ;; float32[] _fusionPoints
     (write-long (length _fusionPoints) s)
     (dotimes (i (length _fusionPoints))
       (sys::poke (elt _fusionPoints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _range
     (write-long (length _range) s)
     (dotimes (i (length _range))
       (sys::poke (elt _range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _image_feuertime
     (send _image_feuertime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _image_feuertime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _fusionPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fusionPoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fusionPoints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get iss_messages::fusion_overlay :md5sum-) "df8e1f6b30f762c4e9c76e7e87f4cfef")
(setf (get iss_messages::fusion_overlay :datatype-) "iss_messages/fusion_overlay")
(setf (get iss_messages::fusion_overlay :definition-)
      "Header header
time image_feuertime

float32[] fusionPoints
float32[] range


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



(provide :iss_messages/fusion_overlay "df8e1f6b30f762c4e9c76e7e87f4cfef")


