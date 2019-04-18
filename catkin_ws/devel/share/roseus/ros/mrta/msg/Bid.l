;; Auto-generated. Do not edit!


(when (boundp 'mrta::Bid)
  (if (not (find-package "MRTA"))
    (make-package "MRTA"))
  (shadow 'Bid (find-package "MRTA")))
(unless (find-package "MRTA::BID")
  (make-package "MRTA::BID"))

(in-package "ROS")
;;//! \htmlinclude Bid.msg.html


(defclass mrta::Bid
  :super ros::object
  :slots (_auc_id _task _robot_id _bid ))

(defmethod mrta::Bid
  (:init
   (&key
    ((:auc_id __auc_id) 0)
    ((:task __task) (instance mrta::Task :init))
    ((:robot_id __robot_id) 0)
    ((:bid __bid) 0.0)
    )
   (send-super :init)
   (setq _auc_id (round __auc_id))
   (setq _task __task)
   (setq _robot_id (round __robot_id))
   (setq _bid (float __bid))
   self)
  (:auc_id
   (&optional __auc_id)
   (if __auc_id (setq _auc_id __auc_id)) _auc_id)
  (:task
   (&rest __task)
   (if (keywordp (car __task))
       (send* _task __task)
     (progn
       (if __task (setq _task (car __task)))
       _task)))
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:bid
   (&optional __bid)
   (if __bid (setq _bid __bid)) _bid)
  (:serialization-length
   ()
   (+
    ;; int32 _auc_id
    4
    ;; mrta/Task _task
    (send _task :serialization-length)
    ;; int32 _robot_id
    4
    ;; float32 _bid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _auc_id
       (write-long _auc_id s)
     ;; mrta/Task _task
       (send _task :serialize s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; float32 _bid
       (sys::poke _bid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _auc_id
     (setq _auc_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mrta/Task _task
     (send _task :deserialize buf ptr-) (incf ptr- (send _task :serialization-length))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _bid
     (setq _bid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrta::Bid :md5sum-) "a062fcd0c764a1d2c6c99c8b1d5ec8be")
(setf (get mrta::Bid :datatype-) "mrta/Bid")
(setf (get mrta::Bid :definition-)
      "int32 auc_id
Task task
int32 robot_id
float32 bid


================================================================================
MSG: mrta/Task
int32 id
int32 start_time
int32 finish_time
int32 est
int32 lst
int32 eft
int32 lft
int32 duration
int32[2] location
")



(provide :mrta/Bid "a062fcd0c764a1d2c6c99c8b1d5ec8be")


