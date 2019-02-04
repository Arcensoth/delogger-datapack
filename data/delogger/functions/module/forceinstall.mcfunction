# delogger:module/forceinstall

function delogger:module/api/setup

scoreboard objectives add dlog.module dummy
scoreboard players set $installed dlog.module 1

function delogger:module/values

scoreboard players operation $vmajor dlog.module = $vmajor temp
scoreboard players operation $vminor dlog.module = $vminor temp
scoreboard players operation $vpatch dlog.module = $vpatch temp
scoreboard players operation $vdev dlog.module = $vdev temp

tellraw @s [{"text": "[Delogger]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function delogger:module/scan
