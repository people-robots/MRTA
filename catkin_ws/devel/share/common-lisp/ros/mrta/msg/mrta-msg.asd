
(cl:in-package :asdf)

(defsystem "mrta-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AuctionAck" :depends-on ("_package_AuctionAck"))
    (:file "_package_AuctionAck" :depends-on ("_package"))
    (:file "AuctionRequest" :depends-on ("_package_AuctionRequest"))
    (:file "_package_AuctionRequest" :depends-on ("_package"))
    (:file "Bid" :depends-on ("_package_Bid"))
    (:file "_package_Bid" :depends-on ("_package"))
    (:file "ScheduledTasks" :depends-on ("_package_ScheduledTasks"))
    (:file "_package_ScheduledTasks" :depends-on ("_package"))
    (:file "Task" :depends-on ("_package_Task"))
    (:file "_package_Task" :depends-on ("_package"))
    (:file "Winner" :depends-on ("_package_Winner"))
    (:file "_package_Winner" :depends-on ("_package"))
  ))