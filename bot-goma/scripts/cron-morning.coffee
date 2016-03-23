# Description:
#    cron setting

cron = require('cron').CronJob
module.exports = (robot) ->
  new cron '0 00 9 * * 1-5', () =>
    robot.send {room: "#general"}, "9時になりました! 今日も１日頑張りましょう!!"
  , null, true, "Asia/Tokyo"
