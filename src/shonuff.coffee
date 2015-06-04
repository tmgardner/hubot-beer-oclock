# Description:
#   Provides important information about the baddest cat in town.
#
# Author:
#   Todd Gardner

module.exports = (robot) ->
  robot.hear /who( is|.?s) (the|da) (mast.{1,2}|meanest|prettiest|baddest mofo low.?down around this town)/i, (msg) ->
    msg.reply "Sho'nuff!"
