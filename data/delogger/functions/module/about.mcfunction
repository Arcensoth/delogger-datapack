# delogger:module/about

function delogger:module/values

tellraw @s [{"text":"[Delogger]", "color": "aqua"}, {"text": " #### Delogger ####", "color": "light_purple"}]

tellraw @s [{"text":"[Delogger]", "color": "aqua"}, {"text": " Lightweight logging API for debugging functions.", "color": "gray"}]

execute if score $vdev temp matches ..0 run tellraw @s [{"text":"[Delogger]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " for Minecraft 1.14", "color": "dark_gray"}]
execute if score $vdev temp matches 1.. run tellraw @s [{"text":"[Delogger]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "dark_gray", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " for Minecraft 1.13", "color": "dark_gray"}]

tellraw @s [{"text":"[Delogger]", "color": "aqua"}, {"text": " Authors:", "color": "gray"}]
function delogger:module/authors

function delogger:module/api/extras

playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2.0 1.25
