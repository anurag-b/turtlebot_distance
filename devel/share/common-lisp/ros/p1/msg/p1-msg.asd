
(cl:in-package :asdf)

(defsystem "p1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "landmarkdistance" :depends-on ("_package_landmarkdistance"))
    (:file "_package_landmarkdistance" :depends-on ("_package"))
  ))