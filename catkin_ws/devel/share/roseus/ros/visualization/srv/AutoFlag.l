;; Auto-generated. Do not edit!


(when (boundp 'visualization::AutoFlag)
  (if (not (find-package "VISUALIZATION"))
    (make-package "VISUALIZATION"))
  (shadow 'AutoFlag (find-package "VISUALIZATION")))
(unless (find-package "VISUALIZATION::AUTOFLAG")
  (make-package "VISUALIZATION::AUTOFLAG"))
(unless (find-package "VISUALIZATION::AUTOFLAGREQUEST")
  (make-package "VISUALIZATION::AUTOFLAGREQUEST"))
(unless (find-package "VISUALIZATION::AUTOFLAGRESPONSE")
  (make-package "VISUALIZATION::AUTOFLAGRESPONSE"))

(in-package "ROS")





(defclass visualization::AutoFlagRequest
  :super ros::object
  :slots (_autoFlag ))

(defmethod visualization::AutoFlagRequest
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

(defclass visualization::AutoFlagResponse
  :super ros::object
  :slots (_isAutoFlagActive ))

(defmethod visualization::AutoFlagResponse
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

(defclass visualization::AutoFlag
  :super ros::object
  :slots ())

(setf (get visualization::AutoFlag :md5sum-) "c55e7efaaabffa6dd063014d83eca6d2")
(setf (get visualization::AutoFlag :datatype-) "visualization/AutoFlag")
(setf (get visualization::AutoFlag :request) visualization::AutoFlagRequest)
(setf (get visualization::AutoFlag :response) visualization::AutoFlagResponse)

(defmethod visualization::AutoFlagRequest
  (:response () (instance visualization::AutoFlagResponse :init)))

(setf (get visualization::AutoFlagRequest :md5sum-) "c55e7efaaabffa6dd063014d83eca6d2")
(setf (get visualization::AutoFlagRequest :datatype-) "visualization/AutoFlagRequest")
(setf (get visualization::AutoFlagRequest :definition-)
      "bool autoFlag
---
bool isAutoFlagActive

")

(setf (get visualization::AutoFlagResponse :md5sum-) "c55e7efaaabffa6dd063014d83eca6d2")
(setf (get visualization::AutoFlagResponse :datatype-) "visualization/AutoFlagResponse")
(setf (get visualization::AutoFlagResponse :definition-)
      "bool autoFlag
---
bool isAutoFlagActive

")



(provide :visualization/AutoFlag "c55e7efaaabffa6dd063014d83eca6d2")


