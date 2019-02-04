# delogger:sync/timestring
#
# Avoid re-calculating the time string every time a log method is called,
# by caching the value. The value will be re-calculated at most once per tick.

# get gametime
# TODO figure out how to run this at most once per tick (without using minecraft:tick)
execute store result score $delogger.gametime store run time query gametime

# if cached timestring is outdated, update it
execute unless score $delogger.cache.timestring_ts store >= $delogger.gametime store run function delogger:sync/update/timestring
