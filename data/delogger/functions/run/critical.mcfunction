# delogger:log/critical
#
# Force-run the critical-level logging procedure.

# pre-populate params for this level
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log.label set value "{ \"text\": \"\", \"extra\": [{ \"text\": \" \", \"color\": \"dark_gray\" }, \"CRITICAL\", { \"text\": \".\", \"color\": \"dark_gray\" }] }"
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log.color set value "{ \"text\": \"\", \"color\": \"light_purple\" }"

# add the log tag to anyone listening on this level
tag @a[scores={dlog.level=..5}] add delogger.temp.log

# run the main logging procedure
function delogger:log
