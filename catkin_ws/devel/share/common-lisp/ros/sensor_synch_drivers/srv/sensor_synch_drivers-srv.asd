
(cl:in-package :asdf)

(defsystem "sensor_synch_drivers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FeuerWeRRStartAquistion" :depends-on ("_package_FeuerWeRRStartAquistion"))
    (:file "_package_FeuerWeRRStartAquistion" :depends-on ("_package"))
  ))