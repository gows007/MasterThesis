;; Auto-generated. Do not edit!


(when (boundp 'iss_messages::IssSfmData)
  (if (not (find-package "ISS_MESSAGES"))
    (make-package "ISS_MESSAGES"))
  (shadow 'IssSfmData (find-package "ISS_MESSAGES")))
(unless (find-package "ISS_MESSAGES::ISSSFMDATA")
  (make-package "ISS_MESSAGES::ISSSFMDATA"))

(in-package "ROS")
;;//! \htmlinclude IssSfmData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iss_messages::IssSfmData
  :super ros::object
  :slots (_header _sfmMsg _feuertime ))

(defmethod iss_messages::IssSfmData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sfmMsg __sfmMsg) (instance std_msgs::Float32MultiArray :init))
    ((:feuertime __feuertime) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sfmMsg __sfmMsg)
   (setq _feuertime __feuertime)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sfmMsg
   (&rest __sfmMsg)
   (if (keywordp (car __sfmMsg))
       (send* _sfmMsg __sfmMsg)
     (progn
       (if __sfmMsg (setq _sfmMsg (car __sfmMsg)))
       _sfmMsg)))
  (:feuertime
   (&optional __feuertime)
   (if __feuertime (setq _feuertime __feuertime)) _feuertime)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32MultiArray _sfmMsg
    (send _sfmMsg :serialization-length)
    ;; time _feuertime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32MultiArray _sfmMsg
       (send _sfmMsg :serialize s)
     ;; time _feuertime
       (write-long (send _feuertime :sec) s) (write-long (send _feuertime :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32MultiArray _sfmMsg
     (send _sfmMsg :deserialize buf ptr-) (incf ptr- (send _sfmMsg :serialization-length))
   ;; time _feuertime
     (send _feuertime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _feuertime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iss_messages::IssSfmData :md5sum-) "b5034ba0029c2a336da5f3ce33908e59")
(setf (get iss_messages::IssSfmData :datatype-) "iss_messages/IssSfmData")
(setf (get iss_messages::IssSfmData :definition-)
      "# This is a message to hold data of sfm output

Header header
std_msgs/Float32MultiArray sfmMsg
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
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :iss_messages/IssSfmData "b5034ba0029c2a336da5f3ce33908e59")


