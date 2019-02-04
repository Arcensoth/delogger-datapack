# delogger:module/install

execute store success score $installed temp if score $installed dlog.module matches 1..
execute if score $installed temp matches 1.. run tellraw @s [{"text":"[Delogger]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
execute unless score $installed temp matches 1.. run function delogger:module/forceinstall
