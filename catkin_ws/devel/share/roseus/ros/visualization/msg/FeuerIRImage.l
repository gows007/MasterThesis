;; Auto-generated. Do not edit!


(when (boundp 'visualization::FeuerIRImage)
  (if (not (find-package "VISUALIZATION"))
    (make-package "VISUALIZATION"))
  (shadow 'FeuerIRImage (find-package "VISUALIZATION")))
(unless (find-package "VISUALIZATION::FEUERIRIMAGE")
  (make-package "VISUALIZATION::FEUERIRIMAGE"))

(in-package "ROS")
;;//! \htmlinclude FeuerIRImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass visualization::FeuerIRImage
  :super ros::object
  :slots (_irimage _feuertime ))

(defmethod visualization::FeuerIRImage
  (:init
   (&key
    ((:irimage __irimage) (instance sensor_msgs::Image :init))
    ((:feuertime __feuertime) (instance ros::time :init))
    )
   (send-super :init)
   (setq _irimage __irimage)
   (setq _feuertime __feuertime)
   self)
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
    ;; sensor_msgs/Image _irimage
    (send _irimage :serialization-length)
    ;; time _feuertime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _irimage
       (send _irimage :serialize s)
     ;; time _feuertime
       (write-long (send _feuertime :sec) s) (write-long (send _feuertime :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _irimage
     (send _irimage :deserialize buf ptr-) (incf ptr- (send _irimage :serialization-length))
   ;; time _feuertime
     (send _feuertime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _feuertime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get visualization::FeuerIRImage :md5sum-) "5d194b13f30e4de6e279a584eed93ac0")
(setf (get visualization::FeuerIRImage :datatype-) "visualization/FeuerIRImage")
(setf (get visualization::FeuerIRImage :definition-)
      "sensor_msgs/Image irimage
time feuertime


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



(provide :visualization/FeuerIRImage "5d194b13f30e4de6e279a584eed93ac0")


