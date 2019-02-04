# delogger:calc/coords

execute align xyz run summon minecraft:area_effect_cloud ~ ~ ~ { Tags: ["delogger.temp"] }
execute as @e[type=minecraft:area_effect_cloud,tag=delogger.temp,distance=..1.1] at @s run function delogger:calc/coords/inner
