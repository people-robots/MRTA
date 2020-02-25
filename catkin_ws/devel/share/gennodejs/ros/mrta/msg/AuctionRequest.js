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

class AuctionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.tasks = null;
      this.PC = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('tasks')) {
        this.tasks = initObj.tasks
      }
      else {
        this.tasks = [];
      }
      if (initObj.hasOwnProperty('PC')) {
        this.PC = initObj.PC
      }
      else {
        this.PC = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuctionRequest
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [tasks]
    // Serialize the length for message field [tasks]
    bufferOffset = _serializer.uint32(obj.tasks.length, buffer, bufferOffset);
    obj.tasks.forEach((val) => {
      bufferOffset = Task.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [PC]
    bufferOffset = _arraySerializer.int32(obj.PC, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuctionRequest
    let len;
    let data = new AuctionRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tasks]
    // Deserialize array length for message field [tasks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tasks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tasks[i] = Task.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [PC]
    data.PC = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 40 * object.tasks.length;
    length += 4 * object.PC.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrta/AuctionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1a8db4f2cc429740600e9b48c19cbd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    Task[] tasks
    int32[] PC
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
    const resolved = new AuctionRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.tasks !== undefined) {
      resolved.tasks = new Array(msg.tasks.length);
      for (let i = 0; i < resolved.tasks.length; ++i) {
        resolved.tasks[i] = Task.Resolve(msg.tasks[i]);
      }
    }
    else {
      resolved.tasks = []
    }

    if (msg.PC !== undefined) {
      resolved.PC = msg.PC;
    }
    else {
      resolved.PC = []
    }

    return resolved;
    }
};

module.exports = AuctionRequest;
