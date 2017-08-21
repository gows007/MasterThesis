;; Auto-generated. Do not edit!


(when (boundp 'sensor_synch_drivers::FeuerIRImage)
  (if (not (find-package "SENSOR_SYNCH_DRIVERS"))
    (make-package "SENSOR_SYNCH_DRIVERS"))
  (shadow 'FeuerIRImage (find-package "SENSOR_SYNCH_DRIVERS")))
(unless (find-package "SENSOR_SYNCH_DRIVERS::FEUERIRIMAGE")
  (make-package "SENSOR_SYNCH_DRIVERS::FEUERIRIMAGE"))

(in-package "ROS")
;;//! \htmlinclude FeuerIRImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_synch_drivers::FeuerIRImage
  :super ros::object
  :slots (_header _irimage _feuertime ))

(defmethod sensor_synch_drivers::FeuerIRImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:irimage __irimage) (instance sensor_msgs::Image :init))
    ((:feuertime __feuertime) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _irimage __irimage)
   (setq _feuertime __feuertime)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:irimage
   (&rest __irimage)
   (if (keywordp (car __irimage))
       (send* _irimage __irimage)
     (progn
       (if __irimage (setq _irimage (car __irimage)))
       _irimage)))
  (:feuertime
   (&optional __feuertime)
   (if __feuertime (setq _feuertime __feuertime)) _feuertime)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _irimage
    (send _irimage :serialization-length)
    ;; time _feuertime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _irimage
       (send _irimage :serialize s)
     ;; time _feuertime
       (write-long (send _feuertime :sec) s) (write-long (send _feuertime :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _irimage
     (send _irimage :deserialize buf ptr-) (incf ptr- (send _irimage :serialization-length))
   ;; time _feuertime
     (send _feuertime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _feuertime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_synch_drivers::FeuerIRImage :md5sum-) "4ca0c834ef4bb930d413675e62bb5f09")
(setf (get sensor_synch_drivers::FeuerIRImage :datatype-) "sensor_synch_drivers/FeuerIRImage")
(setf (get sensor_synch_drivers::FeuerIRImage :definition-)
      "Header header
sensor_msgs/Image irimage
time feuertime


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

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

")



(provide :sensor_synch_drivers/FeuerIRImage "4ca0c834ef4bb930d413675e62bb5f09")


