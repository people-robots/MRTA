// Auto-generated. Do not edit!

// (in-package mrta.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Task {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.start_time = null;
      this.finish_time = null;
      this.est = null;
      this.lst = null;
      this.eft = null;
      this.lft = null;
      this.duration = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0;
      }
      if (initObj.hasOwnProperty('finish_time')) {
        this.finish_time = initObj.finish_time
      }
      else {
        this.finish_time = 0;
      }
      if (initObj.hasOwnProperty('est')) {
        this.est = initObj.est
      }
      else {
        this.est = 0;
      }
      if (initObj.hasOwnProperty('lst')) {
        this.lst = initObj.lst
      }
      else {
        this.lst = 0;
      }
      if (initObj.hasOwnProperty('eft')) {
        this.eft = initObj.eft
      }
      else {
        this.eft = 0;
      }
      if (initObj.hasOwnProperty('lft')) {
        this.lft = initObj.lft
      }
      else {
        this.lft = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Task
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.int32(obj.start_time, buffer, bufferOffset);
    // Serialize message field [finish_time]
    bufferOffset = _serializer.int32(obj.finish_time, buffer, bufferOffset);
    // Serialize message field [est]
    bufferOffset = _serializer.int32(obj.est, buffer, bufferOffset);
    // Serialize message field [lst]
    bufferOffset = _serializer.int32(obj.lst, buffer, bufferOffset);
    // Serialize message field [eft]
    bufferOffset = _serializer.int32(obj.eft, buffer, bufferOffset);
    // Serialize message field [lft]
    bufferOffset = _serializer.int32(obj.lft, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.int32(obj.duration, buffer, bufferOffset);
    // Check that the constant length array field [location] has the right length
    if (obj.location.length !== 2) {
      throw new Error('Unable to serialize array field location - length must be 2')
    }
    // Serialize message field [location]
    bufferOffset = _arraySerializer.int32(obj.location, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Task
    let len;
    let data = new Task(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [finish_time]
    data.finish_time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [est]
    data.est = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lst]
    data.lst = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [eft]
    data.eft = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lft]
    data.lft = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrta/Task';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd86f5da30db4f9950e8526203585575b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 start_time
    int32 finish_time
    int32 est
    int32 lst
    int32 eft
    int32 lft
    int32 duration
    int32[2] location
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Task(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0
    }

    if (msg.finish_time !== undefined) {
      resolved.finish_time = msg.finish_time;
    }
    else {
      resolved.finish_time = 0
    }

    if (msg.est !== undefined) {
      resolved.est = msg.est;
    }
    else {
      resolved.est = 0
    }

    if (msg.lst !== undefined) {
      resolved.lst = msg.lst;
    }
    else {
      resolved.lst = 0
    }

    if (msg.eft !== undefined) {
      resolved.eft = msg.eft;
    }
    else {
      resolved.eft = 0
    }

    if (msg.lft !== undefined) {
      resolved.lft = msg.lft;
    }
    else {
      resolved.lft = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = Task;
