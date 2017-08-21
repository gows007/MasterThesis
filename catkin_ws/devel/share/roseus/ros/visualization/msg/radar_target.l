;; Auto-generated. Do not edit!


(when (boundp 'visualization::radar_target)
  (if (not (find-package "VISUALIZATION"))
    (make-package "VISUALIZATION"))
  (shadow 'radar_target (find-package "VISUALIZATION")))
(unless (find-package "VISUALIZATION::RADAR_TARGET")
  (make-package "VISUALIZATION::RADAR_TARGET"))

(in-package "ROS")
;;//! \htmlinclude radar_target.msg.html


(defclass visualization::radar_target
  :super ros::object
  :slots (_seqID _RADARhwTimeStamp _rangeEstimate _velocityEstimate _amplitude ))

(defmethod visualization::radar_target
  (:init
   (&key
    ((:seqID __seqID) 0)
    ((:RADARhwTimeStamp __RADARhwTimeStamp) 0)
    ((:rangeEstimate __rangeEstimate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocityEstimate __velocityEstimate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:amplitude __amplitude) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _seqID (round __seqID))
   (setq _RADARhwTimeStamp (round __RADARhwTimeStamp))
   (setq _rangeEstimate __rangeEstimate)
   (setq _velocityEstimate __velocityEstimate)
   (setq _amplitude __amplitude)
   self)
  (:seqID
   (&optional __seqID)
   (if __seqID (setq _seqID __seqID)) _seqID)
  (:RADARhwTimeStamp
   (&optional __RADARhwTimeStamp)
   (if __RADARhwTimeStamp (setq _RADARhwTimeStamp __RADARhwTimeStamp)) _RADARhwTimeStamp)
  (:rangeEstimate
   (&optional __rangeEstimate)
   (if __rangeEstimate (setq _rangeEstimate __rangeEstimate)) _rangeEstimate)
  (:velocityEstimate
   (&optional __velocityEstimate)
   (if __velocityEstimate (setq _velocityEstimate __velocityEstimate)) _velocityEstimate)
  (:amplitude
   (&optional __amplitude)
   (if __amplitude (setq _amplitude __amplitude)) _amplitude)
  (:serialization-length
   ()
   (+
    ;; uint32 _seqID
    4
    ;; uint32 _RADARhwTimeStamp
    4
    ;; float32[] _rangeEstimate
    (* 4    (length _rangeEstimate)) 4
    ;; float32[] _velocityEstimate
    (* 4    (length _velocityEstimate)) 4
    ;; float32[] _amplitude
    (* 4    (length _amplitude)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seqID
       (write-long _seqID s)
     ;; uint32 _RADARhwTimeStamp
       (write-long _RADARhwTimeStamp s)
     ;; float32[] _rangeEstimate
     (write-long (length _rangeEstimate) s)
     (dotimes (i (length _rangeEstimate))
       (sys::poke (elt _rangeEstimate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocityEstimate
     (write-long (length _velocityEstimate) s)
     (dotimes (i (length _velocityEstimate))
       (sys::poke (elt _velocityEstimate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _amplitude
     (write-long (length _amplitude) s)
     (dotimes (i (length _amplitude))
       (sys::poke (elt _amplitude i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seqID
     (setq _seqID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _RADARhwTimeStamp
     (setq _RADARhwTimeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _rangeEstimate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rangeEstimate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rangeEstimate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocityEstimate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocityEstimate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocityEstimate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _amplitude
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _amplitude (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _amplitude i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get visualization::radar_target :md5sum-) "fbd89b12a68c9a950a123efe1f1d5712")
(setf (get visualization::radar_target :datatype-) "visualization/radar_target")
(setf (get visualization::radar_target :definition-)
      "uint32 seqID
uint32 RADARhwTimeStamp
float32[] rangeEstimate
float32[] velocityEstimate
float32[] amplitude


")



(provide :visualization/radar_target "fbd89b12a68c9a950a123efe1f1d5712")


