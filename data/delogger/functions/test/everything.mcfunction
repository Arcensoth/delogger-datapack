# delogger:test/everything

execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:some/function", message: "Generating terrain..." }
execute positioned ~10 ~ ~ run function delogger:log/debug
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:another/function", message: "Ready Player One" }
execute positioned ~ ~5 ~15 run function delogger:log/debug
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:yet/another/function", message: "Did they just walk up slowly and load?" }
execute positioned ~5 ~5 ~5 run function delogger:log/debug
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:yet/another/function", message: "Dispatching carrier pigeons" }
execute positioned ~5 ~5 ~5 run function delogger:log/info
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:yet/another/function", message: "Is this thing on..?" }
execute positioned ~5 ~5 ~5 run function delogger:log/warning
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:yet/another/function", message: "Preparing Final Form" }
execute positioned ~5 ~5 ~5 run function delogger:log/debug
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:yet/another/function", message: "Insert Coin to Continue" }
execute positioned ~5 ~5 ~5 run function delogger:log/info
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:yet/another/function", message: "Entering cheat codes" }
execute positioned ~5 ~5 ~5 run function delogger:log/debug
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:some/crazy/function", message: "Pressing random buttons" }
execute positioned ~20 ~10 ~30 run function delogger:log/warning
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:some/crazy/function", message: "We don't need a healer for this, right?" }
execute positioned ~20 ~10 ~30 run function delogger:log/error
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log set value { function: "mypack:some/crazy/function", message: "Good News Everyone!" }
execute positioned ~20 ~10 ~30 run function delogger:log/critical
