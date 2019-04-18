;; Auto-generated. Do not edit!


(when (boundp 'mrta::TerminateRobot)
  (if (not (find-package "MRTA"))
    (make-package "MRTA"))
  (shadow 'TerminateRobot (find-package "MRTA")))
(unless (find-package "MRTA::TERMINATEROBOT")
  (make-package "MRTA::TERMINATEROBOT"))
(unless (find-package "MRTA::TERMINATEROBOTREQUEST")
  (make-package "MRTA::TERMINATEROBOTREQUEST"))
(unless (find-package "MRTA::TERMINATEROBOTRESPONSE")
  (make-package "MRTA::TERMINATEROBOTRESPONSE"))

(in-package "ROS")





(defclass mrta::TerminateRobotRequest
  :super ros::object
  :slots ())

(defmethod mrta::TerminateRobotRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mrta::TerminateRobotResponse
  :super ros::object
  :slots (_result ))

(defmethod mrta::TerminateRobotResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mrta::TerminateRobot
  :super ros::object
  :slots ())

(setf (get mrta::TerminateRobot :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get mrta::TerminateRobot :datatype-) "mrta/TerminateRobot")
(setf (get mrta::TerminateRobot :request) mrta::TerminateRobotRequest)
(setf (get mrta::TerminateRobot :response) mrta::TerminateRobotResponse)

(defmethod mrta::TerminateRobotRequest
  (:response () (instance mrta::TerminateRobotResponse :init)))

(setf (get mrta::TerminateRobotRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get mrta::TerminateRobotRequest :datatype-) "mrta/TerminateRobotRequest")
(setf (get mrta::TerminateRobotRequest :definition-)
      "---
bool result
")

(setf (get mrta::TerminateRobotResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get mrta::TerminateRobotResponse :datatype-) "mrta/TerminateRobotResponse")
(setf (get mrta::TerminateRobotResponse :definition-)
      "---
bool result
")



(provide :mrta/TerminateRobot "eb13ac1f1354ccecb7941ee8fa2192e8")


