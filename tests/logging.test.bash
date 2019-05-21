#!/usr/bin/env bash

##
## this script is used to test (not as in unit-test) the logging functions
##

## get top directory
readonly __topdir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

## some global vars
readonly VERBOSE=5
readonly __testsuite=1

## get main module
# shellcheck disable=SC1090
source "$__topdir/../lib/log.bash"

notify 0 "notify"
error 0 "error"
warn 0 "warning"
inf 0 "information"
debug 0 "debug"
critical 0 "critical"

notify1 "notify"
error1 "error"
warn1 "warning"
inf1 "information"
debug1 "debug"
critical1 "critical"

notify2 "notify"
error2 "error"
warn2 "warning"
inf2 "information"
debug2 "debug"
critical2 "critical"

notify3 "notify"
error3 "error"
warn3 "warning"
inf3 "information"
debug3 "debug"
critical3 "critical"

notify4 "notify"
error4 "error"
warn4 "warning"
inf4 "information"
debug4 "debug"
critical4 "critical"

notify5 "notify"
error5 "error"
warn5 "warning"
inf5 "information"
debug5 "debug"
critical5 "critical"

notify1 "long line sfsdf sdfsdfdsf sdfsdfsdf sdfsdfsdf sdfsdfsdf sdfsdfsdfsd dsfsdfsdfs sdfsdfsdfs sdfsdfsdfsdf dfsdfsdf sdfsdfsdf sfsdfsdfs sdfsdfdsf sdfsdsdfs sdfsdfsf"
notify2 "long line sfsdf sdfsdfdsf sdfsdfsdf sdfsdfsdf sdfsdfsdf sdfsdfsdfsd dsfsdfsdfs sdfsdfsdfs sdfsdfsdfsdf dfsdfsdf sdfsdfsdf sfsdfsdfs sdfsdfdsf sdfsdsdfs sdfsdfsf"
notify3 "long line sfsdf sdfsdfdsf sdfsdfsdf sdfsdfsdf sdfsdfsdf sdfsdfsdfsd dsfsdfsdfs sdfsdfsdfs sdfsdfsdfsdf dfsdfsdf sdfsdfsdf sfsdfsdfs sdfsdfdsf sdfsdsdfs sdfsdfsf"
notify4 "long line sfsdf sdfsdfdsf sdfsdfsdf sdfsdfsdf sdfsdfsdf sdfsdfsdfsd dsfsdfsdfs sdfsdfsdfs sdfsdfsdfsdf dfsdfsdf sdfsdfsdf sfsdfsdfs sdfsdfdsf sdfsdsdfs sdfsdfsf"
notify5 "long line sfsdf sdfsdfdsf sdfsdfsdf sdfsdfsdf sdfsdfsdf sdfsdfsdfsd dsfsdfsdfs sdfsdfsdfs sdfsdfsdfsdf dfsdfsdf sdfsdfsdf sfsdfsdfs sdfsdfdsf sdfsdsdfs sdfsdfsf"
