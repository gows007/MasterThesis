
(cl:in-package :asdf)

(defsystem "optris_drivers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FeuerIRImage" :depends-on ("_package_FeuerIRImage"))
    (:file "_package_FeuerIRImage" :depends-on ("_package"))
    (:file "Flag" :depends-on ("_package_Flag"))
    (:file "_package_Flag" :depends-on ("_package"))
    (:file "Temperature" :depends-on ("_package_Temperature"))
    (:file "_package_Temperature" :depends-on ("_package"))
  ))