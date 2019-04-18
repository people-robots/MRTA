;; Auto-generated. Do not edit!


(when (boundp 'mrta::Task)
  (if (not (find-package "MRTA"))
    (make-package "MRTA"))
  (shadow 'Task (find-package "MRTA")))
(unless (find-package "MRTA::TASK")
  (make-package "MRTA::TASK"))

(in-package "ROS")
;;//! \htmlinclude Task.msg.html


(defclass mrta::Task
  :super ros::object
  :slots (_id _start_time _finish_time _est _lst _eft _lft _duration _location ))

(defmethod mrta::Task
  (:init
   (&key
    ((:id __id) 0)
    ((:start_time __start_time) 0)
    ((:finish_time __finish_time) 0)
    ((:est __est) 0)
    ((:lst __lst) 0)
    ((:eft __eft) 0)
    ((:lft __lft) 0)
    ((:duration __duration) 0)
    ((:location __location) (make-array 2 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _start_time (round __start_time))
   (setq _finish_time (round __finish_time))
   (setq _est (round __est))
   (setq _lst (round __lst))
   (setq _eft (round __eft))
   (setq _lft (round __lft))
   (setq _duration (round __duration))
   (setq _location __location)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:finish_time
   (&optional __finish_time)
   (if __finish_time (setq _finish_time __finish_time)) _finish_time)
  (:est
   (&optional __est)
   (if __est (setq _est __est)) _est)
  (:lst
   (&optional __lst)
   (if __lst (setq _lst __lst)) _lst)
  (:eft
   (&optional __eft)
   (if __eft (setq _eft __eft)) _eft)
  (:lft
   (&optional __lft)
   (if __lft (setq _lft __lft)) _lft)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _start_time
    4
    ;; int32 _finish_time
    4
    ;; int32 _est
    4
    ;; int32 _lst
    4
    ;; int32 _eft
    4
    ;; int32 _lft
    4
    ;; int32 _duration
    4
    ;; int32[2] _location
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _start_time
       (write-long _start_time s)
     ;; int32 _finish_time
       (write-long _finish_time s)
     ;; int32 _est
       (write-long _est s)
     ;; int32 _lst
       (write-long _lst s)
     ;; int32 _eft
       (write-long _eft s)
     ;; int32 _lft
       (write-long _lft s)
     ;; int32 _duration
       (write-long _duration s)
     ;; int32[2] _location
     (dotimes (i 2)
       (write-long (elt _location i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _start_time
     (setq _start_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _finish_time
     (setq _finish_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _est
     (setq _est (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lst
     (setq _lst (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _eft
     (setq _eft (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lft
     (setq _lft (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[2] _location
   (dotimes (i (length _location))
     (setf (elt _location i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get mrta::Task :md5sum-) "d86f5da30db4f9950e8526203585575b")
(setf (get mrta::Task :datatype-) "mrta/Task")
(setf (get mrta::Task :definition-)
      "int32 id
int32 start_time
int32 finish_time
int32 est
int32 lst
int32 eft
int32 lft
int32 duration
int32[2] location
")



(provide :mrta/Task "d86f5da30db4f9950e8526203585575b")


