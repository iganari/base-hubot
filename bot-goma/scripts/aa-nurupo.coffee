# Description:
# Note
# ぬるぽ
#
# Commands:
# hubot ぬるぽ - You reply with, "ｶﾞｯ" When you post a "ぬるぽ" word.

module.exports = (robot) ->

  robot.hear /ぬるぽ/i, (msg) ->
    msg.send "♦━⊂( ・∀・) 彡 ｶﾞｯ☆`Д´)ﾉ  <- ＞＞ @#{msg.message.user.name} "
