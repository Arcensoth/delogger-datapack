# delogger:sync/update/timestring
#
# Force-update the cached timestring.
#
# @parents
#   delogger:sync/timestring

# assume gametime is up-to-date
scoreboard players operation $delogger.timestring.ticks param = $delogger.gametime store

# build the timestring
function delogger:util/timestring

# cache a copy of the result
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.cache.timestring set from block ~ ~ ~ RecordItem.tag.delogger.return.timestring.raw

# update timestamp
scoreboard players operation $delogger.cache.timestring_ts store = $delogger.gametime store
