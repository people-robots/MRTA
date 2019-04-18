; Auto-generated. Do not edit!


(cl:in-package mrta-srv)


;//! \htmlinclude TerminateRobot-request.msg.html

(cl:defclass <TerminateRobot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TerminateRobot-request (<TerminateRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TerminateRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TerminateRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrta-srv:<TerminateRobot-request> is deprecated: use mrta-srv:TerminateRobot-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TerminateRobot-request>) ostream)
  "Serializes a message object of type '<TerminateRobot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TerminateRobot-request>) istream)
  "Deserializes a message object of type '<TerminateRobot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TerminateRobot-request>)))
  "Returns string type for a service object of type '<TerminateRobot-request>"
  "mrta/TerminateRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TerminateRobot-request)))
  "Returns string type for a service object of type 'TerminateRobot-request"
  "mrta/TerminateRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TerminateRobot-request>)))
  "Returns md5sum for a message object of type '<TerminateRobot-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TerminateRobot-request)))
  "Returns md5sum for a message object of type 'TerminateRobot-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TerminateRobot-request>)))
  "Returns full string definition for message of type '<TerminateRobot-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TerminateRobot-request)))
  "Returns full string definition for message of type 'TerminateRobot-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TerminateRobot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TerminateRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TerminateRobot-request
))
;//! \htmlinclude TerminateRobot-response.msg.html

(cl:defclass <TerminateRobot-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TerminateRobot-response (<TerminateRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TerminateRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TerminateRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrta-srv:<TerminateRobot-response> is deprecated: use mrta-srv:TerminateRobot-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TerminateRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrta-srv:result-val is deprecated.  Use mrta-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TerminateRobot-response>) ostream)
  "Serializes a message object of type '<TerminateRobot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TerminateRobot-response>) istream)
  "Deserializes a message object of type '<TerminateRobot-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TerminateRobot-response>)))
  "Returns string type for a service object of type '<TerminateRobot-response>"
  "mrta/TerminateRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TerminateRobot-response)))
  "Returns string type for a service object of type 'TerminateRobot-response"
  "mrta/TerminateRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TerminateRobot-response>)))
  "Returns md5sum for a message object of type '<TerminateRobot-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TerminateRobot-response)))
  "Returns md5sum for a message object of type 'TerminateRobot-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TerminateRobot-response>)))
  "Returns full string definition for message of type '<TerminateRobot-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TerminateRobot-response)))
  "Returns full string definition for message of type 'TerminateRobot-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TerminateRobot-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TerminateRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TerminateRobot-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TerminateRobot)))
  'TerminateRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TerminateRobot)))
  'TerminateRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TerminateRobot)))
  "Returns string type for a service object of type '<TerminateRobot>"
  "mrta/TerminateRobot")