# delogger:sync/level
#
# Avoid resolving an @a every time a log method is called, by caching the
# minimum required level each tick. At most a constant number of @a selectors
# will be run each tick, regardless of how many log calls are made.

# get gametime
# TODO figure out how to run this at most once per tick (without using minecraft:tick)
execute store result score $delogger.gametime store run time query gametime

# if cached level is outdated, update it
execute unless score $delogger.cache.level_ts store >= $delogger.gametime store run function delogger:sync/update/level
