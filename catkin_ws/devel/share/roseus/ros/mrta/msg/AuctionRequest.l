;; Auto-generated. Do not edit!


(when (boundp 'mrta::AuctionRequest)
  (if (not (find-package "MRTA"))
    (make-package "MRTA"))
  (shadow 'AuctionRequest (find-package "MRTA")))
(unless (find-package "MRTA::AUCTIONREQUEST")
  (make-package "MRTA::AUCTIONREQUEST"))

(in-package "ROS")
;;//! \htmlinclude AuctionRequest.msg.html


(defclass mrta::AuctionRequest
  :super ros::object
  :slots (_id _tasks _PC ))

(defmethod mrta::AuctionRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:tasks __tasks) (let (r) (dotimes (i 0) (push (instance mrta::Task :init) r)) r))
    ((:PC __PC) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _tasks __tasks)
   (setq _PC __PC)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:tasks
   (&rest __tasks)
   (if (keywordp (car __tasks))
       (send* _tasks __tasks)
     (progn
       (if __tasks (setq _tasks (car __tasks)))
       _tasks)))
  (:PC
   (&optional __PC)
   (if __PC (setq _PC __PC)) _PC)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; mrta/Task[] _tasks
    (apply #'+ (send-all _tasks :serialization-length)) 4
    ;; int32[] _PC
    (* 4    (length _PC)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; mrta/Task[] _tasks
     (write-long (length _tasks) s)
     (dolist (elem _tasks)
       (send elem :serialize s)
       )
     ;; int32[] _PC
     (write-long (length _PC) s)
     (dotimes (i (length _PC))
       (write-long (elt _PC i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mrta/Task[] _tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tasks (let (r) (dotimes (i n) (push (instance mrta::Task :init) r)) r))
     (dolist (elem- _tasks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _PC
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _PC (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _PC i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get mrta::AuctionRequest :md5sum-) "b1a8db4f2cc429740600e9b48c19cbd1")
(setf (get mrta::AuctionRequest :datatype-) "mrta/AuctionRequest")
(setf (get mrta::AuctionRequest :definition-)
      "int32 id
Task[] tasks
int32[] PC
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



(provide :mrta/AuctionRequest "b1a8db4f2cc429740600e9b48c19cbd1")


