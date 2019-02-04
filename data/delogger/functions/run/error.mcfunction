# delogger:log/error
#
# Force-run the error-level logging procedure.

# pre-populate params for this level
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log.label set value "{ \"text\": \"\", \"extra\": [{ \"text\": \"  \", \"bold\": true }, \"ERROR\", { \"text\": \"  \", \"bold\": true }] }"
execute at 0-0-0-0-0 run data modify block ~ ~ ~ RecordItem.tag.delogger.param.log.color set value "{ \"text\": \"\", \"color\": \"red\" }"

# add the log tag to anyone listening on this level
tag @a[scores={dlog.level=..4}] add delogger.temp.log

# run the main logging procedure
function delogger:log
