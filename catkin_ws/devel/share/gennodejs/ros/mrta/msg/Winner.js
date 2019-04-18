// Auto-generated. Do not edit!

// (in-package mrta.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Task = require('./Task.js');

//-----------------------------------------------------------

class Winner {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auc_id = null;
      this.robot_id = null;
      this.task = null;
    }
    else {
      if (initObj.hasOwnProperty('auc_id')) {
        this.auc_id = initObj.auc_id
      }
      else {
        this.auc_id = 0;
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = new Task();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Winner
    // Serialize message field [auc_id]
    bufferOffset = _serializer.int32(obj.auc_id, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = Task.serialize(obj.task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Winner
    let len;
    let data = new Winner(null);
    // Deserialize message field [auc_id]
    data.auc_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = Task.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrta/Winner';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4455477a8940672e1c8b3ed3d113e18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 auc_id
    int32 robot_id
    Task task
    ================================================================================
    MSG: mrta/Task
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
    const resolved = new Winner(null);
    if (msg.auc_id !== undefined) {
      resolved.auc_id = msg.auc_id;
    }
    else {
      resolved.auc_id = 0
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.task !== undefined) {
      resolved.task = Task.Resolve(msg.task)
    }
    else {
      resolved.task = new Task()
    }

    return resolved;
    }
};

module.exports = Winner;
