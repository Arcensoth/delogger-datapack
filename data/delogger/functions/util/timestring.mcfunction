# delogger:util/timestring
#
# Format a human-readable time string based on a number of ticks.
#
# @public
#
# @params
#   $delogger.timestring.ticks param
#       The number of ticks to format.
#
# @returns
#   $delogger.timestring.days return
#       The total number of tick-days.
#   $delogger.timestring.hours return
#       The number of tick-hours in the current tick-day (0-23).
#   $delogger.timestring.minutes return
#       The number of tick-minutes in the current tick-hour (0-59).
#   $delogger.timestring.seconds return
#       The number of tick-seconds in the current tick-minute (0-59).
#   $delogger.timestring.ticks return
#       The number of ticks in the current tick-second (0-19).
#
# @returns_nbt
#   delogger.return.timestring.raw: raw_text_component
#       The resolved time string.
#   delogger.return.timestring.pad.days: string
#   delogger.return.timestring.pad.hours: string
#   delogger.return.timestring.pad.minutes: string
#   delogger.return.timestring.pad.seconds: string
#   delogger.return.timestring.pad.ticks: string

execute at 0-0-0-0-0 run function delogger:util/timestring/inner
