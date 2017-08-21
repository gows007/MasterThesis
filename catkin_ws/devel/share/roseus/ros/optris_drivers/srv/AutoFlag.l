;; Auto-generated. Do not edit!


(when (boundp 'optris_drivers::AutoFlag)
  (if (not (find-package "OPTRIS_DRIVERS"))
    (make-package "OPTRIS_DRIVERS"))
  (shadow 'AutoFlag (find-package "OPTRIS_DRIVERS")))
(unless (find-package "OPTRIS_DRIVERS::AUTOFLAG")
  (make-package "OPTRIS_DRIVERS::AUTOFLAG"))
(unless (find-package "OPTRIS_DRIVERS::AUTOFLAGREQUEST")
  (make-package "OPTRIS_DRIVERS::AUTOFLAGREQUEST"))
(unless (find-package "OPTRIS_DRIVERS::AUTOFLAGRESPONSE")
  (make-package "OPTRIS_DRIVERS::AUTOFLAGRESPONSE"))

(in-package "ROS")





(defclass optris_drivers::AutoFlagRequest
  :super ros::object
  :slots (_autoFlag ))

(defmethod optris_drivers::AutoFlagRequest
  (:init
   (&key
    ((:autoFlag __autoFlag) nil)
    )
   (send-super :init)
   (setq _autoFlag __autoFlag)
   self)
  (:autoFlag
   (&optional __autoFlag)
   (if __autoFlag (setq _autoFlag __autoFlag)) _autoFlag)
  (:serialization-length
   ()
   (+
    ;; bool _autoFlag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _autoFlag
       (if _autoFlag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _autoFlag
     (setq _autoFlag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass optris_drivers::AutoFlagResponse
  :super ros::object
  :slots (_isAutoFlagActive ))

(defmethod optris_drivers::AutoFlagResponse
  (:init
   (&key
    ((:isAutoFlagActive __isAutoFlagActive) nil)
    )
   (send-super :init)
   (setq _isAutoFlagActive __isAutoFlagActive)
   self)
  (:isAutoFlagActive
   (&optional __isAutoFlagActive)
   (if __isAutoFlagActive (setq _isAutoFlagActive __isAutoFlagActive)) _isAutoFlagActive)
  (:serialization-length
   ()
   (+
    ;; bool _isAutoFlagActive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isAutoFlagActive
       (if _isAutoFlagActive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isAutoFlagActive
     (setq _isAutoFlagActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass optris_drivers::AutoFlag
  :super ros::object
  :slots ())

(setf (get optris_drivers::AutoFlag :md5sum-) "c55e7efaaabffa6dd063014d83eca6d2")
(setf (get optris_drivers::AutoFlag :datatype-) "optris_drivers/AutoFlag")
(setf (get optris_drivers::AutoFlag :request) optris_drivers::AutoFlagRequest)
(setf (get optris_drivers::AutoFlag :response) optris_drivers::AutoFlagResponse)

(defmethod optris_drivers::AutoFlagRequest
  (:response () (instance optris_drivers::AutoFlagResponse :init)))

(setf (get optris_drivers::AutoFlagRequest :md5sum-) "c55e7efaaabffa6dd063014d83eca6d2")
(setf (get optris_drivers::AutoFlagRequest :datatype-) "optris_drivers/AutoFlagRequest")
(setf (get optris_drivers::AutoFlagRequest :definition-)
      "bool autoFlag
---
bool isAutoFlagActive

")

(setf (get optris_drivers::AutoFlagResponse :md5sum-) "c55e7efaaabffa6dd063014d83eca6d2")
(setf (get optris_drivers::AutoFlagResponse :datatype-) "optris_drivers/AutoFlagResponse")
(setf (get optris_drivers::AutoFlagResponse :definition-)
      "bool autoFlag
---
bool isAutoFlagActive

")



(provide :optris_drivers/AutoFlag "c55e7efaaabffa6dd063014d83eca6d2")


