;; Auto-generated. Do not edit!


(when (boundp 'mrta::Winner)
  (if (not (find-package "MRTA"))
    (make-package "MRTA"))
  (shadow 'Winner (find-package "MRTA")))
(unless (find-package "MRTA::WINNER")
  (make-package "MRTA::WINNER"))

(in-package "ROS")
;;//! \htmlinclude Winner.msg.html


(defclass mrta::Winner
  :super ros::object
  :slots (_auc_id _robot_id _task ))

(defmethod mrta::Winner
  (:init
   (&key
    ((:auc_id __auc_id) 0)
    ((:robot_id __robot_id) 0)
    ((:task __task) (instance mrta::Task :init))
    )
   (send-super :init)
   (setq _auc_id (round __auc_id))
   (setq _robot_id (round __robot_id))
   (setq _task __task)
   self)
  (:auc_id
   (&optional __auc_id)
   (if __auc_id (setq _auc_id __auc_id)) _auc_id)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:task
   (&rest __task)
   (if (keywordp (car __task))
       (send* _task __task)
     (progn
       (if __task (setq _task (car __task)))
       _task)))
  (:serialization-length
   ()
   (+
    ;; int32 _auc_id
    4
    ;; int32 _robot_id
    4
    ;; mrta/Task _task
    (send _task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _auc_id
       (write-long _auc_id s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; mrta/Task _task
       (send _task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _auc_id
     (setq _auc_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mrta/Task _task
     (send _task :deserialize buf ptr-) (incf ptr- (send _task :serialization-length))
   ;;
   self)
  )

(setf (get mrta::Winner :md5sum-) "a4455477a8940672e1c8b3ed3d113e18")
(setf (get mrta::Winner :datatype-) "mrta/Winner")
(setf (get mrta::Winner :definition-)
      "int32 auc_id
int32 robot_id
Task task
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



(provide :mrta/Winner "a4455477a8940672e1c8b3ed3d113e18")


