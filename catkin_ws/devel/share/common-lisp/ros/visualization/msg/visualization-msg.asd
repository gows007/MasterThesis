
(cl:in-package :asdf)

(defsystem "visualization-msg"
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
    (:file "fusion_overlay" :depends-on ("_package_fusion_overlay"))
    (:file "_package_fusion_overlay" :depends-on ("_package"))
    (:file "radar_target" :depends-on ("_package_radar_target"))
    (:file "_package_radar_target" :depends-on ("_package"))
  ))