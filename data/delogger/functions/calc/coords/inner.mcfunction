# delogger:calc/coords/inner

execute store result score $delogger.log.x store run data get entity @s Pos[0]
execute store result score $delogger.log.y store run data get entity @s Pos[1]
execute store result score $delogger.log.z store run data get entity @s Pos[2]

kill @s
