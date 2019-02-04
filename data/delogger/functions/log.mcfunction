# delogger:log
#
# Run the main logging procedure.
#
# Prefer the `delogger:log/<level>` functions for pre-defined log levels.
#
# @public
#
# @params_nbt
#   delogger.param.log.color: raw_text_component
#       Blank `text` with the desired `color`; e.g.
#       `"{ \"text\": \"\", \"color\": \"aqua\" }"`
#   delogger.param.log.label: raw_text_component
#       The centered title of the log level; e.g.
#       `"\" WARNING \""`
#   delogger.param.log.function: string
#       The name of the executing function.
#   delogger.param.log.message: string
#       The message to print.

# make sure timestring is up-to-date
function delogger:sync/timestring

# calculate coords from current position
function delogger:calc/coords

# behold, the beast
# TODO hover text for timestring?
execute at 0-0-0-0-0 run tellraw @a[tag=delogger.temp.log] [{"nbt": "RecordItem.tag.delogger.param.log.color", "block": "~ ~ ~", "interpret": true}, {"nbt": "RecordItem.tag.delogger.cache.timestring", "block": "~ ~ ~", "interpret": true}, {"text": " [", "color": "gray"}, {"nbt": "RecordItem.tag.delogger.param.log.label", "block": "~ ~ ~", "interpret": true}, {"text": "]", "color": "gray"}, {"text": " In ", "color": "gray"}, {"nbt": "RecordItem.tag.delogger.param.log.function", "block": "~ ~ ~"}, {"text": " at ", "color": "gray"}, {"score": {"name": "$delogger.log.x", "objective": "store"}}, {"text": " "}, {"score": {"name": "$delogger.log.y", "objective": "store"}}, {"text": " "}, {"score": {"name": "$delogger.log.z", "objective": "store"}}, {"text": " as ", "color": "gray"}, {"selector": "@s"}, {"text": ": ", "color": "gray"}, {"nbt": "RecordItem.tag.delogger.param.log.message", "block": "~ ~ ~"}]

# remove the log tag
tag @a[tag=delogger.temp.log] remove delogger.temp.log
