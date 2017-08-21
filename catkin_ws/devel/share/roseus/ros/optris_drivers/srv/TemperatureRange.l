;; Auto-generated. Do not edit!


(when (boundp 'optris_drivers::TemperatureRange)
  (if (not (find-package "OPTRIS_DRIVERS"))
    (make-package "OPTRIS_DRIVERS"))
  (shadow 'TemperatureRange (find-package "OPTRIS_DRIVERS")))
(unless (find-package "OPTRIS_DRIVERS::TEMPERATURERANGE")
  (make-package "OPTRIS_DRIVERS::TEMPERATURERANGE"))
(unless (find-package "OPTRIS_DRIVERS::TEMPERATURERANGEREQUEST")
  (make-package "OPTRIS_DRIVERS::TEMPERATURERANGEREQUEST"))
(unless (find-package "OPTRIS_DRIVERS::TEMPERATURERANGERESPONSE")
  (make-package "OPTRIS_DRIVERS::TEMPERATURERANGERESPONSE"))

(in-package "ROS")





(defclass optris_drivers::TemperatureRangeRequest
  :super ros::object
  :slots (_temperatureRangeMin _temperatureRangeMax ))

(defmethod optris_drivers::TemperatureRangeRequest
  (:init
   (&key
    ((:temperatureRangeMin __temperatureRangeMin) 0)
    ((:temperatureRangeMax __temperatureRangeMax) 0)
    )
   (send-super :init)
   (setq _temperatureRangeMin (round __temperatureRangeMin))
   (setq _temperatureRangeMax (round __temperatureRangeMax))
   self)
  (:temperatureRangeMin
   (&optional __temperatureRangeMin)
   (if __temperatureRangeMin (setq _temperatureRangeMin __temperatureRangeMin)) _temperatureRangeMin)
  (:temperatureRangeMax
   (&optional __temperatureRangeMax)
   (if __temperatureRangeMax (setq _temperatureRangeMax __temperatureRangeMax)) _temperatureRangeMax)
  (:serialization-length
   ()
   (+
    ;; int16 _temperatureRangeMin
    2
    ;; int16 _temperatureRangeMax
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _temperatureRangeMin
       (write-word _temperatureRangeMin s)
     ;; int16 _temperatureRangeMax
       (write-word _temperatureRangeMax s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _temperatureRangeMin
     (setq _temperatureRangeMin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _temperatureRangeMax
     (setq _temperatureRangeMax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass optris_drivers::TemperatureRangeResponse
  :super ros::object
  :slots (_success ))

(defmethod optris_drivers::TemperatureRangeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass optris_drivers::TemperatureRange
  :super ros::object
  :slots ())

(setf (get optris_drivers::TemperatureRange :md5sum-) "10eabfbcf8caad5dbfe2a7ee7be8570f")
(setf (get optris_drivers::TemperatureRange :datatype-) "optris_drivers/TemperatureRange")
(setf (get optris_drivers::TemperatureRange :request) optris_drivers::TemperatureRangeRequest)
(setf (get optris_drivers::TemperatureRange :response) optris_drivers::TemperatureRangeResponse)

(defmethod optris_drivers::TemperatureRangeRequest
  (:response () (instance optris_drivers::TemperatureRangeResponse :init)))

(setf (get optris_drivers::TemperatureRangeRequest :md5sum-) "10eabfbcf8caad5dbfe2a7ee7be8570f")
(setf (get optris_drivers::TemperatureRangeRequest :datatype-) "optris_drivers/TemperatureRangeRequest")
(setf (get optris_drivers::TemperatureRangeRequest :definition-)
      "int16 temperatureRangeMin
int16 temperatureRangeMax
---
bool success

")

(setf (get optris_drivers::TemperatureRangeResponse :md5sum-) "10eabfbcf8caad5dbfe2a7ee7be8570f")
(setf (get optris_drivers::TemperatureRangeResponse :datatype-) "optris_drivers/TemperatureRangeResponse")
(setf (get optris_drivers::TemperatureRangeResponse :definition-)
      "int16 temperatureRangeMin
int16 temperatureRangeMax
---
bool success

")



(provide :optris_drivers/TemperatureRange "10eabfbcf8caad5dbfe2a7ee7be8570f")


