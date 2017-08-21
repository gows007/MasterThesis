
(cl:in-package :asdf)

(defsystem "visualization-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AutoFlag" :depends-on ("_package_AutoFlag"))
    (:file "_package_AutoFlag" :depends-on ("_package"))
    (:file "Palette" :depends-on ("_package_Palette"))
    (:file "_package_Palette" :depends-on ("_package"))
    (:file "TemperatureRange" :depends-on ("_package_TemperatureRange"))
    (:file "_package_TemperatureRange" :depends-on ("_package"))
  ))