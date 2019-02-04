# delogger:module/forceuninstall

scoreboard objectives remove dlog.module

function delogger:module/api/teardown

tellraw @s [{"text": "[Delogger]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "uninstalled", "color": "red"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5
