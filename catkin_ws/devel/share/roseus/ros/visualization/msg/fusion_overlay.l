;; Auto-generated. Do not edit!


(when (boundp 'visualization::fusion_overlay)
  (if (not (find-package "VISUALIZATION"))
    (make-package "VISUALIZATION"))
  (shadow 'fusion_overlay (find-package "VISUALIZATION")))
(unless (find-package "VISUALIZATION::FUSION_OVERLAY")
  (make-package "VISUALIZATION::FUSION_OVERLAY"))

(in-package "ROS")
;;//! \htmlinclude fusion_overlay.msg.html


(defclass visualization::fusion_overlay
  :super ros::object
  :slots (_seqID _imageHwTimeStamp _fusionPoints _range ))

(defmethod visualization::fusion_overlay
  (:init
   (&key
    ((:seqID __seqID) 0)
    ((:imageHwTimeStamp __imageHwTimeStamp) 0)
    ((:fusionPoints __fusionPoints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:range __range) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _seqID (round __seqID))
   (setq _imageHwTimeStamp (round __imageHwTimeStamp))
   (setq _fusionPoints __fusionPoints)
   (setq _range __range)
   self)
  (:seqID
   (&optional __seqID)
   (if __seqID (setq _seqID __seqID)) _seqID)
  (:imageHwTimeStamp
   (&optional __imageHwTimeStamp)
   (if __imageHwTimeStamp (setq _imageHwTimeStamp __imageHwTimeStamp)) _imageHwTimeStamp)
  (:fusionPoints
   (&optional __fusionPoints)
   (if __fusionPoints (setq _fusionPoints __fusionPoints)) _fusionPoints)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; uint32 _seqID
    4
    ;; uint32 _imageHwTimeStamp
    4
    ;; float32[] _fusionPoints
    (* 4    (length _fusionPoints)) 4
    ;; float32[] _range
    (* 4    (length _range)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seqID
       (write-long _seqID s)
     ;; uint32 _imageHwTimeStamp
       (write-long _imageHwTimeStamp s)
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
   ;; uint32 _seqID
     (setq _seqID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _imageHwTimeStamp
     (setq _imageHwTimeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get visualization::fusion_overlay :md5sum-) "a5519680eaf65b54a21dd39863066fb1")
(setf (get visualization::fusion_overlay :datatype-) "visualization/fusion_overlay")
(setf (get visualization::fusion_overlay :definition-)
      "uint32 seqID
uint32 imageHwTimeStamp
float32[] fusionPoints
float32[] range


")



(provide :visualization/fusion_overlay "a5519680eaf65b54a21dd39863066fb1")


