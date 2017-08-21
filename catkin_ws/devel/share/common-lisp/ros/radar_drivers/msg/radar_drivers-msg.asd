
(cl:in-package :asdf)

(defsystem "radar_drivers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FeuerRadarRaw" :depends-on ("_package_FeuerRadarRaw"))
    (:file "_package_FeuerRadarRaw" :depends-on ("_package"))
  ))