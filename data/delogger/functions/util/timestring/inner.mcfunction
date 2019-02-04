# delogger:sync/update/timestring/inner
#
# Must be called at jukebox position.
#
# @parents
#   delogger:sync/update/timestring

# tick-days
scoreboard players operation $delogger.timestring.days return = $delogger.timestring.ticks param
scoreboard players operation $delogger.timestring.days return /= $1728000 const

# tick-hours
scoreboard players operation $delogger.timestring.hours return = $delogger.timestring.ticks param
scoreboard players operation $delogger.timestring.hours return /= $72000 const
scoreboard players operation $delogger.timestring.hours return %= $24 const
execute if score $delogger.timestring.hours return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.hours set value "/"
execute unless score $delogger.timestring.hours return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.hours set value "/0"

# tick-minutes
scoreboard players operation $delogger.timestring.minutes return = $delogger.timestring.ticks param
scoreboard players operation $delogger.timestring.minutes return /= $1200 const
scoreboard players operation $delogger.timestring.minutes return %= $60 const
execute if score $delogger.timestring.minutes return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.minutes set value ":"
execute unless score $delogger.timestring.minutes return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.minutes set value ":0"

# tick-seconds
scoreboard players operation $delogger.timestring.seconds return = $delogger.timestring.ticks param
scoreboard players operation $delogger.timestring.seconds return /= $20 const
scoreboard players operation $delogger.timestring.seconds return %= $60 const
execute if score $delogger.timestring.seconds return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.seconds set value ":"
execute unless score $delogger.timestring.seconds return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.seconds set value ":0"

# ticks
scoreboard players operation $delogger.timestring.ticks return = $delogger.timestring.ticks param
scoreboard players operation $delogger.timestring.ticks return %= $20 const
execute if score $delogger.timestring.ticks return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.ticks set value "."
execute unless score $delogger.timestring.ticks return matches 10.. run data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.pad.ticks set value ".0"

# timestring
# TODO use a sign to resolve the text component
data modify block ~ ~ ~ RecordItem.tag.delogger.return.timestring.raw set value "{\"text\": \"\", \"extra\": [{\"score\": {\"name\": \"$delogger.timestring.days\", \"objective\": \"return\"}}, {\"nbt\": \"RecordItem.tag.delogger.return.timestring.pad.hours\", \"block\": \"~ ~ ~\"}, {\"score\": {\"name\": \"$delogger.timestring.hours\", \"objective\": \"return\"}}, {\"nbt\": \"RecordItem.tag.delogger.return.timestring.pad.minutes\", \"block\": \"~ ~ ~\"}, {\"score\": {\"name\": \"$delogger.timestring.minutes\", \"objective\": \"return\"}}, {\"nbt\": \"RecordItem.tag.delogger.return.timestring.pad.seconds\", \"block\": \"~ ~ ~\"}, {\"score\": {\"name\": \"$delogger.timestring.seconds\", \"objective\": \"return\"}}, {\"nbt\": \"RecordItem.tag.delogger.return.timestring.pad.ticks\", \"block\": \"~ ~ ~\"}, {\"score\": {\"name\": \"$delogger.timestring.ticks\", \"objective\": \"return\"}}]}"
