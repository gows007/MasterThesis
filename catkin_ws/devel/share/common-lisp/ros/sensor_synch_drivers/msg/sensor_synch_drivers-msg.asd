
(cl:in-package :asdf)

(defsystem "sensor_synch_drivers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FeuerIRImage" :depends-on ("_package_FeuerIRImage"))
    (:file "_package_FeuerIRImage" :depends-on ("_package"))
    (:file "FeuerWeRRImuMsg" :depends-on ("_package_FeuerWeRRImuMsg"))
    (:file "_package_FeuerWeRRImuMsg" :depends-on ("_package"))
  ))