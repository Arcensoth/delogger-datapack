# delogger:sync/update/level
#
# Force-update the cached minimum required level.
#
# @parents
#   delogger:sync/level

# default to no level
scoreboard players set $delogger.cache.level store 99

# calculate minimum required level
# TODO optimize with cascading success conditional
execute if entity @a[scores={dlog.level=5}] run scoreboard players set $delogger.cache.level store 5
execute if entity @a[scores={dlog.level=4}] run scoreboard players set $delogger.cache.level store 4
execute if entity @a[scores={dlog.level=3}] run scoreboard players set $delogger.cache.level store 3
execute if entity @a[scores={dlog.level=2}] run scoreboard players set $delogger.cache.level store 2
execute if entity @a[scores={dlog.level=..1}] run scoreboard players set $delogger.cache.level store 1

# update timestamp
scoreboard players operation $delogger.cache.level_ts store = $delogger.gametime store
