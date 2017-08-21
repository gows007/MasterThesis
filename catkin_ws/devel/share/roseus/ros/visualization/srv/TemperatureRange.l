;; Auto-generated. Do not edit!


(when (boundp 'visualization::TemperatureRange)
  (if (not (find-package "VISUALIZATION"))
    (make-package "VISUALIZATION"))
  (shadow 'TemperatureRange (find-package "VISUALIZATION")))
(unless (find-package "VISUALIZATION::TEMPERATURERANGE")
  (make-package "VISUALIZATION::TEMPERATURERANGE"))
(unless (find-package "VISUALIZATION::TEMPERATURERANGEREQUEST")
  (make-package "VISUALIZATION::TEMPERATURERANGEREQUEST"))
(unless (find-package "VISUALIZATION::TEMPERATURERANGERESPONSE")
  (make-package "VISUALIZATION::TEMPERATURERANGERESPONSE"))

(in-package "ROS")





(defclass visualization::TemperatureRangeRequest
  :super ros::object
  :slots (_temperatureRangeMin _temperatureRangeMax ))

(defmethod visualization::TemperatureRangeRequest
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

(defclass visualization::TemperatureRangeResponse
  :super ros::object
  :slots (_success ))

(defmethod visualization::TemperatureRangeResponse
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

(defclass visualization::TemperatureRange
  :super ros::object
  :slots ())

(setf (get visualization::TemperatureRange :md5sum-) "10eabfbcf8caad5dbfe2a7ee7be8570f")
(setf (get visualization::TemperatureRange :datatype-) "visualization/TemperatureRange")
(setf (get visualization::TemperatureRange :request) visualization::TemperatureRangeRequest)
(setf (get visualization::TemperatureRange :response) visualization::TemperatureRangeResponse)

(defmethod visualization::TemperatureRangeRequest
  (:response () (instance visualization::TemperatureRangeResponse :init)))

(setf (get visualization::TemperatureRangeRequest :md5sum-) "10eabfbcf8caad5dbfe2a7ee7be8570f")
(setf (get visualization::TemperatureRangeRequest :datatype-) "visualization/TemperatureRangeRequest")
(setf (get visualization::TemperatureRangeRequest :definition-)
      "int16 temperatureRangeMin
int16 temperatureRangeMax
---
bool success

")

(setf (get visualization::TemperatureRangeResponse :md5sum-) "10eabfbcf8caad5dbfe2a7ee7be8570f")
(setf (get visualization::TemperatureRangeResponse :datatype-) "visualization/TemperatureRangeResponse")
(setf (get visualization::TemperatureRangeResponse :definition-)
      "int16 temperatureRangeMin
int16 temperatureRangeMax
---
bool success

")



(provide :visualization/TemperatureRange "10eabfbcf8caad5dbfe2a7ee7be8570f")


