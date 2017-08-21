;; Auto-generated. Do not edit!


(when (boundp 'sensor_synch_drivers::FeuerWeRRImuMsg)
  (if (not (find-package "SENSOR_SYNCH_DRIVERS"))
    (make-package "SENSOR_SYNCH_DRIVERS"))
  (shadow 'FeuerWeRRImuMsg (find-package "SENSOR_SYNCH_DRIVERS")))
(unless (find-package "SENSOR_SYNCH_DRIVERS::FEUERWERRIMUMSG")
  (make-package "SENSOR_SYNCH_DRIVERS::FEUERWERRIMUMSG"))

(in-package "ROS")
;;//! \htmlinclude FeuerWeRRImuMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_synch_drivers::FeuerWeRRImuMsg
  :super ros::object
  :slots (_header _imu_angular_velocity _imu_linear_acceleration _ma351_linear_acceleration _magnetometer _feuertime ))

(defmethod sensor_synch_drivers::FeuerWeRRImuMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imu_angular_velocity __imu_angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:imu_linear_acceleration __imu_linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:ma351_linear_acceleration __ma351_linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:magnetometer __magnetometer) (instance geometry_msgs::Vector3 :init))
    ((:feuertime __feuertime) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _imu_angular_velocity __imu_angular_velocity)
   (setq _imu_linear_acceleration __imu_linear_acceleration)
   (setq _ma351_linear_acceleration __ma351_linear_acceleration)
   (setq _magnetometer __magnetometer)
   (setq _feuertime __feuertime)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imu_angular_velocity
   (&rest __imu_angular_velocity)
   (if (keywordp (car __imu_angular_velocity))
       (send* _imu_angular_velocity __imu_angular_velocity)
     (progn
       (if __imu_angular_velocity (setq _imu_angular_velocity (car __imu_angular_velocity)))
       _imu_angular_velocity)))
  (:imu_linear_acceleration
   (&rest __imu_linear_acceleration)
   (if (keywordp (car __imu_linear_acceleration))
       (send* _imu_linear_acceleration __imu_linear_acceleration)
     (progn
       (if __imu_linear_acceleration (setq _imu_linear_acceleration (car __imu_linear_acceleration)))
       _imu_linear_acceleration)))
  (:ma351_linear_acceleration
   (&rest __ma351_linear_acceleration)
   (if (keywordp (car __ma351_linear_acceleration))
       (send* _ma351_linear_acceleration __ma351_linear_acceleration)
     (progn
       (if __ma351_linear_acceleration (setq _ma351_linear_acceleration (car __ma351_linear_acceleration)))
       _ma351_linear_acceleration)))
  (:magnetometer
   (&rest __magnetometer)
   (if (keywordp (car __magnetometer))
       (send* _magnetometer __magnetometer)
     (progn
       (if __magnetometer (setq _magnetometer (car __magnetometer)))
       _magnetometer)))
  (:feuertime
   (&optional __feuertime)
   (if __feuertime (setq _feuertime __feuertime)) _feuertime)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _imu_angular_velocity
    (send _imu_angular_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _imu_linear_acceleration
    (send _imu_linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _ma351_linear_acceleration
    (send _ma351_linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _magnetometer
    (send _magnetometer :serialization-length)
    ;; time _feuertime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _imu_angular_velocity
       (send _imu_angular_velocity :serialize s)
     ;; geometry_msgs/Vector3 _imu_linear_acceleration
       (send _imu_linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _ma351_linear_acceleration
       (send _ma351_linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _magnetometer
       (send _magnetometer :serialize s)
     ;; time _feuertime
       (write-long (send _feuertime :sec) s) (write-long (send _feuertime :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _imu_angular_velocity
     (send _imu_angular_velocity :deserialize buf ptr-) (incf ptr- (send _imu_angular_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _imu_linear_acceleration
     (send _imu_linear_acceleration :deserialize buf ptr-) (incf ptr- (send _imu_linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _ma351_linear_acceleration
     (send _ma351_linear_acceleration :deserialize buf ptr-) (incf ptr- (send _ma351_linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _magnetometer
     (send _magnetometer :deserialize buf ptr-) (incf ptr- (send _magnetometer :serialization-length))
   ;; time _feuertime
     (send _feuertime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _feuertime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_synch_drivers::FeuerWeRRImuMsg :md5sum-) "dee61ce08b0d15cae6217dbe3037c1bc")
(setf (get sensor_synch_drivers::FeuerWeRRImuMsg :datatype-) "sensor_synch_drivers/FeuerWeRRImuMsg")
(setf (get sensor_synch_drivers::FeuerWeRRImuMsg :definition-)
      "# This is a message to hold data from the FeuerWeRR (Inertial Measurement Unit)

Header header
geometry_msgs/Vector3 imu_angular_velocity
geometry_msgs/Vector3 imu_linear_acceleration
geometry_msgs/Vector3 ma351_linear_acceleration
geometry_msgs/Vector3 magnetometer
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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :sensor_synch_drivers/FeuerWeRRImuMsg "dee61ce08b0d15cae6217dbe3037c1bc")


