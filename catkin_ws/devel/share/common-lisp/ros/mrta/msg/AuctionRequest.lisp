; Auto-generated. Do not edit!


(cl:in-package mrta-msg)


;//! \htmlinclude AuctionRequest.msg.html

(cl:defclass <AuctionRequest> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector mrta-msg:Task)
   :initform (cl:make-array 0 :element-type 'mrta-msg:Task :initial-element (cl:make-instance 'mrta-msg:Task)))
   (PC
    :reader PC
    :initarg :PC
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AuctionRequest (<AuctionRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctionRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctionRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrta-msg:<AuctionRequest> is deprecated: use mrta-msg:AuctionRequest instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AuctionRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:id-val is deprecated.  Use mrta-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <AuctionRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:tasks-val is deprecated.  Use mrta-msg:tasks instead.")
  (tasks m))

(cl:ensure-generic-function 'PC-val :lambda-list '(m))
(cl:defmethod PC-val ((m <AuctionRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-msg:PC-val is deprecated.  Use mrta-msg:PC instead.")
  (PC m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctionRequest>) ostream)
  "Serializes a message object of type '<AuctionRequest>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'PC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'PC))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctionRequest>) istream)
  "Deserializes a message object of type '<AuctionRequest>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'PC) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'PC)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctionRequest>)))
  "Returns string type for a message object of type '<AuctionRequest>"
  "mrta/AuctionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionRequest)))
  "Returns string type for a message object of type 'AuctionRequest"
  "mrta/AuctionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctionRequest>)))
  "Returns md5sum for a message object of type '<AuctionRequest>"
  "b1a8db4f2cc429740600e9b48c19cbd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctionRequest)))
  "Returns md5sum for a message object of type 'AuctionRequest"
  "b1a8db4f2cc429740600e9b48c19cbd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctionRequest>)))
  "Returns full string definition for message of type '<AuctionRequest>"
  (cl:format cl:nil "int32 id~%Task[] tasks~%int32[] PC~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctionRequest)))
  "Returns full string definition for message of type 'AuctionRequest"
  (cl:format cl:nil "int32 id~%Task[] tasks~%int32[] PC~%================================================================================~%MSG: mrta/Task~%int32 id~%int32 start_time~%int32 finish_time~%int32 est~%int32 lst~%int32 eft~%int32 lft~%int32 duration~%int32[2] location~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctionRequest>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'PC) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctionRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctionRequest
    (cl:cons ':id (id msg))
    (cl:cons ':tasks (tasks msg))
    (cl:cons ':PC (PC msg))
))
