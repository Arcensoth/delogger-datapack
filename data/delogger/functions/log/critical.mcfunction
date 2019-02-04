# delogger:log/critical
#
# Attempt to run the critical logging procedure. Avoid running if there are no
# players listening on this level.
#
# @public
#
# @params_nbt
#   delogger.param.log.function: string
#       The name of the executing function.
#   delogger.param.log.message: string
#       The message to print.

# make sure level is up-to-date
function delogger:sync/level

# if this level is needed, proceed
execute if score $delogger.cache.level store matches ..5 run function delogger:run/critical
