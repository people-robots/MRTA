
(cl:in-package :asdf)

(defsystem "mrta-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TerminateRobot" :depends-on ("_package_TerminateRobot"))
    (:file "_package_TerminateRobot" :depends-on ("_package"))
  ))