# delogger:module/values

scoreboard players set $installed temp 0
scoreboard players operation $installed temp += $installed dlog.module

function delogger:module/version
