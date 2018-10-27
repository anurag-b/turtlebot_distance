; Auto-generated. Do not edit!


(cl:in-package p1-msg)


;//! \htmlinclude landmarkdistance.msg.html

(cl:defclass <landmarkdistance> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass landmarkdistance (<landmarkdistance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <landmarkdistance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'landmarkdistance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p1-msg:<landmarkdistance> is deprecated: use p1-msg:landmarkdistance instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <landmarkdistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p1-msg:name-val is deprecated.  Use p1-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <landmarkdistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p1-msg:distance-val is deprecated.  Use p1-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <landmarkdistance>) ostream)
  "Serializes a message object of type '<landmarkdistance>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <landmarkdistance>) istream)
  "Deserializes a message object of type '<landmarkdistance>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<landmarkdistance>)))
  "Returns string type for a message object of type '<landmarkdistance>"
  "p1/landmarkdistance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'landmarkdistance)))
  "Returns string type for a message object of type 'landmarkdistance"
  "p1/landmarkdistance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<landmarkdistance>)))
  "Returns md5sum for a message object of type '<landmarkdistance>"
  "e2f8ddf8c9e39a28149179429f5ae342")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'landmarkdistance)))
  "Returns md5sum for a message object of type 'landmarkdistance"
  "e2f8ddf8c9e39a28149179429f5ae342")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<landmarkdistance>)))
  "Returns full string definition for message of type '<landmarkdistance>"
  (cl:format cl:nil "string name #NAme of the landmark~%float64 distance #Distnace to the landmark, in meters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'landmarkdistance)))
  "Returns full string definition for message of type 'landmarkdistance"
  (cl:format cl:nil "string name #NAme of the landmark~%float64 distance #Distnace to the landmark, in meters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <landmarkdistance>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <landmarkdistance>))
  "Converts a ROS message object to a list"
  (cl:list 'landmarkdistance
    (cl:cons ':name (name msg))
    (cl:cons ':distance (distance msg))
))
