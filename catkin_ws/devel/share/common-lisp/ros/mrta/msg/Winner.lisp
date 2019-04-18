; Auto-generated. Do not edit!


(cl:in-package mrta-msg)


;//! \htmlinclude Winner.msg.html

(cl:defclass <Winner> (roslisp-msg-protocol:ros-message)
  ((auc_id
    :reader auc_id
    :initarg :auc_id
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (task
    :reader task
    :initarg :task
    :type mrta-msg:Task
    :initform (cl:make-instance 'mrta-msg:Task)))
)

(cl:defclass Winner (<Winner>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Winner>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Winner)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrta-msg:<Winner> is deprecated: use mrta-msg:Winner instead.")))

(cl:ensure-generic-function 'auc_id-val :lambda-list '(m))
(cl:defmethod auc_id-val ((m <Winner>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:auc_id-val is deprecated.  Use mrta-msg:auc_id instead.")
  (auc_id m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <Winner>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:robot_id-val is deprecated.  Use mrta-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <Winner>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:task-val is deprecated.  Use mrta-msg:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Winner>) ostream)
  "Serializes a message object of type '<Winner>"
  (cl:let* ((signed (cl:slot-value msg 'auc_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Winner>) istream)
  "Deserializes a message object of type '<Winner>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auc_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Winner>)))
  "Returns string type for a message object of type '<Winner>"
  "mrta/Winner")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Winner)))
  "Returns string type for a message object of type 'Winner"
  "mrta/Winner")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Winner>)))
  "Returns md5sum for a message object of type '<Winner>"
  "a4455477a8940672e1c8b3ed3d113e18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Winner)))
  "Returns md5sum for a message object of type 'Winner"
  "a4455477a8940672e1c8b3ed3d113e18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Winner>)))
  "Returns full string definition for message of type '<Winner>"
  (cl:format cl:nil "int32 auc_id~%int32 robot_id~%Task task~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Winner)))
  "Returns full string definition for message of type 'Winner"
  (cl:format cl:nil "int32 auc_id~%int32 robot_id~%Task task~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Winner>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Winner>))
  "Converts a ROS message object to a list"
  (cl:list 'Winner
    (cl:cons ':auc_id (auc_id msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':task (task msg))
))
