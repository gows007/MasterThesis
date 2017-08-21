;; Auto-generated. Do not edit!


(when (boundp 'optris_drivers::Palette)
  (if (not (find-package "OPTRIS_DRIVERS"))
    (make-package "OPTRIS_DRIVERS"))
  (shadow 'Palette (find-package "OPTRIS_DRIVERS")))
(unless (find-package "OPTRIS_DRIVERS::PALETTE")
  (make-package "OPTRIS_DRIVERS::PALETTE"))
(unless (find-package "OPTRIS_DRIVERS::PALETTEREQUEST")
  (make-package "OPTRIS_DRIVERS::PALETTEREQUEST"))
(unless (find-package "OPTRIS_DRIVERS::PALETTERESPONSE")
  (make-package "OPTRIS_DRIVERS::PALETTERESPONSE"))

(in-package "ROS")





(defclass optris_drivers::PaletteRequest
  :super ros::object
  :slots (_palette _paletteScaling _temperatureMin _temperatureMax ))

(defmethod optris_drivers::PaletteRequest
  (:init
   (&key
    ((:palette __palette) 0)
    ((:paletteScaling __paletteScaling) 0)
    ((:temperatureMin __temperatureMin) 0.0)
    ((:temperatureMax __temperatureMax) 0.0)
    )
   (send-super :init)
   (setq _palette (round __palette))
   (setq _paletteScaling (round __paletteScaling))
   (setq _temperatureMin (float __temperatureMin))
   (setq _temperatureMax (float __temperatureMax))
   self)
  (:palette
   (&optional __palette)
   (if __palette (setq _palette __palette)) _palette)
  (:paletteScaling
   (&optional __paletteScaling)
   (if __paletteScaling (setq _paletteScaling __paletteScaling)) _paletteScaling)
  (:temperatureMin
   (&optional __temperatureMin)
   (if __temperatureMin (setq _temperatureMin __temperatureMin)) _temperatureMin)
  (:temperatureMax
   (&optional __temperatureMax)
   (if __temperatureMax (setq _temperatureMax __temperatureMax)) _temperatureMax)
  (:serialization-length
   ()
   (+
    ;; int16 _palette
    2
    ;; int16 _paletteScaling
    2
    ;; float32 _temperatureMin
    4
    ;; float32 _temperatureMax
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _palette
       (write-word _palette s)
     ;; int16 _paletteScaling
       (write-word _paletteScaling s)
     ;; float32 _temperatureMin
       (sys::poke _temperatureMin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperatureMax
       (sys::poke _temperatureMax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _palette
     (setq _palette (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _paletteScaling
     (setq _paletteScaling (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _temperatureMin
     (setq _temperatureMin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperatureMax
     (setq _temperatureMax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass optris_drivers::PaletteResponse
  :super ros::object
  :slots (_success ))

(defmethod optris_drivers::PaletteResponse
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

(defclass optris_drivers::Palette
  :super ros::object
  :slots ())

(setf (get optris_drivers::Palette :md5sum-) "cd6f35b272f9ce0ceb0409de9795cd7f")
(setf (get optris_drivers::Palette :datatype-) "optris_drivers/Palette")
(setf (get optris_drivers::Palette :request) optris_drivers::PaletteRequest)
(setf (get optris_drivers::Palette :response) optris_drivers::PaletteResponse)

(defmethod optris_drivers::PaletteRequest
  (:response () (instance optris_drivers::PaletteResponse :init)))

(setf (get optris_drivers::PaletteRequest :md5sum-) "cd6f35b272f9ce0ceb0409de9795cd7f")
(setf (get optris_drivers::PaletteRequest :datatype-) "optris_drivers/PaletteRequest")
(setf (get optris_drivers::PaletteRequest :definition-)
      "int16 palette
int16 paletteScaling
float32 temperatureMin
float32 temperatureMax
---
bool success

")

(setf (get optris_drivers::PaletteResponse :md5sum-) "cd6f35b272f9ce0ceb0409de9795cd7f")
(setf (get optris_drivers::PaletteResponse :datatype-) "optris_drivers/PaletteResponse")
(setf (get optris_drivers::PaletteResponse :definition-)
      "int16 palette
int16 paletteScaling
float32 temperatureMin
float32 temperatureMax
---
bool success

")



(provide :optris_drivers/Palette "cd6f35b272f9ce0ceb0409de9795cd7f")


