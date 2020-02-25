; Auto-generated. Do not edit!


(cl:in-package mrta-msg)


;//! \htmlinclude AuctionAck.msg.html

(cl:defclass <AuctionAck> (roslisp-msg-protocol:ros-message)
  ((auc_id
    :reader auc_id
    :initarg :auc_id
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0))
)

(cl:defclass AuctionAck (<AuctionAck>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctionAck>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctionAck)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrta-msg:<AuctionAck> is deprecated: use mrta-msg:AuctionAck instead.")))

(cl:ensure-generic-function 'auc_id-val :lambda-list '(m))
(cl:defmethod auc_id-val ((m <AuctionAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:auc_id-val is deprecated.  Use mrta-msg:auc_id instead.")
  (auc_id m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <AuctionAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:robot_id-val is deprecated.  Use mrta-msg:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctionAck>) ostream)
  "Serializes a message object of type '<AuctionAck>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctionAck>) istream)
  "Deserializes a message object of type '<AuctionAck>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctionAck>)))
  "Returns string type for a message object of type '<AuctionAck>"
  "mrta/AuctionAck")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionAck)))
  "Returns string type for a message object of type 'AuctionAck"
  "mrta/AuctionAck")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctionAck>)))
  "Returns md5sum for a message object of type '<AuctionAck>"
  "168a584f870d2ab3dda7180656bbecb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctionAck)))
  "Returns md5sum for a message object of type 'AuctionAck"
  "168a584f870d2ab3dda7180656bbecb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctionAck>)))
  "Returns full string definition for message of type '<AuctionAck>"
  (cl:format cl:nil "int32 auc_id~%int32 robot_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctionAck)))
  "Returns full string definition for message of type 'AuctionAck"
  (cl:format cl:nil "int32 auc_id~%int32 robot_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctionAck>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctionAck>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctionAck
    (cl:cons ':auc_id (auc_id msg))
    (cl:cons ':robot_id (robot_id msg))
))
