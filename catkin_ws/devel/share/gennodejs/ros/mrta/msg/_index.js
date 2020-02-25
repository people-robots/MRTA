
"use strict";

let AuctionRequest = require('./AuctionRequest.js');
let Task = require('./Task.js');
let Bid = require('./Bid.js');
let ScheduledTasks = require('./ScheduledTasks.js');
let Winner = require('./Winner.js');
let AuctionAck = require('./AuctionAck.js');

module.exports = {
  AuctionRequest: AuctionRequest,
  Task: Task,
  Bid: Bid,
  ScheduledTasks: ScheduledTasks,
  Winner: Winner,
  AuctionAck: AuctionAck,
};
