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

class AuctionAck {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auc_id = null;
      this.robot_id = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuctionAck
    // Serialize message field [auc_id]
    bufferOffset = _serializer.int32(obj.auc_id, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuctionAck
    let len;
    let data = new AuctionAck(null);
    // Deserialize message field [auc_id]
    data.auc_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrta/AuctionAck';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '168a584f870d2ab3dda7180656bbecb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 auc_id
    int32 robot_id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuctionAck(null);
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

    return resolved;
    }
};

module.exports = AuctionAck;
