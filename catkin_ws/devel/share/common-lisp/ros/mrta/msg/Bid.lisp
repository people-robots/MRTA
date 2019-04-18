; Auto-generated. Do not edit!


(cl:in-package mrta-msg)


;//! \htmlinclude Bid.msg.html

(cl:defclass <Bid> (roslisp-msg-protocol:ros-message)
  ((auc_id
    :reader auc_id
    :initarg :auc_id
    :type cl:integer
    :initform 0)
   (task
    :reader task
    :initarg :task
    :type mrta-msg:Task
    :initform (cl:make-instance 'mrta-msg:Task))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (bid
    :reader bid
    :initarg :bid
    :type cl:float
    :initform 0.0))
)

(cl:defclass Bid (<Bid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrta-msg:<Bid> is deprecated: use mrta-msg:Bid instead.")))

(cl:ensure-generic-function 'auc_id-val :lambda-list '(m))
(cl:defmethod auc_id-val ((m <Bid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:auc_id-val is deprecated.  Use mrta-msg:auc_id instead.")
  (auc_id m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <Bid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:task-val is deprecated.  Use mrta-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <Bid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:robot_id-val is deprecated.  Use mrta-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'bid-val :lambda-list '(m))
(cl:defmethod bid-val ((m <Bid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:bid-val is deprecated.  Use mrta-msg:bid instead.")
  (bid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bid>) ostream)
  "Serializes a message object of type '<Bid>"
  (cl:let* ((signed (cl:slot-value msg 'auc_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bid>) istream)
  "Deserializes a message object of type '<Bid>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auc_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bid) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bid>)))
  "Returns string type for a message object of type '<Bid>"
  "mrta/Bid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bid)))
  "Returns string type for a message object of type 'Bid"
  "mrta/Bid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bid>)))
  "Returns md5sum for a message object of type '<Bid>"
  "a062fcd0c764a1d2c6c99c8b1d5ec8be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bid)))
  "Returns md5sum for a message object of type 'Bid"
  "a062fcd0c764a1d2c6c99c8b1d5ec8be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bid>)))
  "Returns full string definition for message of type '<Bid>"
  (cl:format cl:nil "int32 auc_id~%Task task~%int32 robot_id~%float32 bid~%~%~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bid)))
  "Returns full string definition for message of type 'Bid"
  (cl:format cl:nil "int32 auc_id~%Task task~%int32 robot_id~%float32 bid~%~%~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bid>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bid>))
  "Converts a ROS message object to a list"
  (cl:list 'Bid
    (cl:cons ':auc_id (auc_id msg))
    (cl:cons ':task (task msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':bid (bid msg))
))
