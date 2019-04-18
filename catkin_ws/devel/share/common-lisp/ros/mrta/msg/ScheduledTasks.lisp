; Auto-generated. Do not edit!


(cl:in-package mrta-msg)


;//! \htmlinclude ScheduledTasks.msg.html

(cl:defclass <ScheduledTasks> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector mrta-msg:Task)
   :initform (cl:make-array 0 :element-type 'mrta-msg:Task :initial-element (cl:make-instance 'mrta-msg:Task))))
)

(cl:defclass ScheduledTasks (<ScheduledTasks>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScheduledTasks>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScheduledTasks)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrta-msg:<ScheduledTasks> is deprecated: use mrta-msg:ScheduledTasks instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ScheduledTasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:robot_id-val is deprecated.  Use mrta-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <ScheduledTasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:tasks-val is deprecated.  Use mrta-msg:tasks instead.")
  (tasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScheduledTasks>) ostream)
  "Serializes a message object of type '<ScheduledTasks>"
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScheduledTasks>) istream)
  "Deserializes a message object of type '<ScheduledTasks>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrta-msg:Task))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScheduledTasks>)))
  "Returns string type for a message object of type '<ScheduledTasks>"
  "mrta/ScheduledTasks")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScheduledTasks)))
  "Returns string type for a message object of type 'ScheduledTasks"
  "mrta/ScheduledTasks")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScheduledTasks>)))
  "Returns md5sum for a message object of type '<ScheduledTasks>"
  "3b30c4166f23c14e0ae3f2931c9b42d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScheduledTasks)))
  "Returns md5sum for a message object of type 'ScheduledTasks"
  "3b30c4166f23c14e0ae3f2931c9b42d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScheduledTasks>)))
  "Returns full string definition for message of type '<ScheduledTasks>"
  (cl:format cl:nil "int32 robot_id~%Task[] tasks~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScheduledTasks)))
  "Returns full string definition for message of type 'ScheduledTasks"
  (cl:format cl:nil "int32 robot_id~%Task[] tasks~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScheduledTasks>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScheduledTasks>))
  "Converts a ROS message object to a list"
  (cl:list 'ScheduledTasks
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':tasks (tasks msg))
))
