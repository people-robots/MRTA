;; Auto-generated. Do not edit!


(when (boundp 'mrta::AuctionAck)
  (if (not (find-package "MRTA"))
    (make-package "MRTA"))
  (shadow 'AuctionAck (find-package "MRTA")))
(unless (find-package "MRTA::AUCTIONACK")
  (make-package "MRTA::AUCTIONACK"))

(in-package "ROS")
;;//! \htmlinclude AuctionAck.msg.html


(defclass mrta::AuctionAck
  :super ros::object
  :slots (_auc_id _robot_id ))

(defmethod mrta::AuctionAck
  (:init
   (&key
    ((:auc_id __auc_id) 0)
    ((:robot_id __robot_id) 0)
    )
   (send-super :init)
   (setq _auc_id (round __auc_id))
   (setq _robot_id (round __robot_id))
   self)
  (:auc_id
   (&optional __auc_id)
   (if __auc_id (setq _auc_id __auc_id)) _auc_id)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; int32 _auc_id
    4
    ;; int32 _robot_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _auc_id
       (write-long _auc_id s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _auc_id
     (setq _auc_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrta::AuctionAck :md5sum-) "168a584f870d2ab3dda7180656bbecb2")
(setf (get mrta::AuctionAck :datatype-) "mrta/AuctionAck")
(setf (get mrta::AuctionAck :definition-)
      "int32 auc_id
int32 robot_id
")



(provide :mrta/AuctionAck "168a584f870d2ab3dda7180656bbecb2")


