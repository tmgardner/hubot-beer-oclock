# Description:
#   Say Hi to Hubot.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot hello - "hello!"
#   hubot orly - "yarly"
#
# Author:
#   tombell

module.exports = (robot) ->
  robot.hear /beer/, (msg) ->
    moment = require('moment-timezone');
    five_pm = moment.tz("17:00", "h:mm", "America/New_York")
    midnight = moment.tz("23:59", "h:mm", "America/New_York")
    if moment.tz("America/New_York").isBetween(five_pm, midnight)
      msg.reply "It's :beer: o'clock right now!"
    else
      msg.reply ":beer: o'clock is in #{five_pm.fromNow()}"
