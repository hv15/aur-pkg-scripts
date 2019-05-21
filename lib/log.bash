##
## This file contains logging related functions
##

# shellcheck shell=bash

##
## Color and font codes:
##
##  Escape is: \e[ color,font m
##
##  3? - background color, 4? - foreground color
##  0: black, 1: red, 2: green, 3: yellow, 4: blue, 5: megenta, 6: cyan, 7: white
##
##  Font: 0 - normal, 1 - bold, 2 - faint, 3 - italic, 4 - underline, etc...
##
##  Example: \e[31;2m red with faint font \e[0m
##

## get some modules
# shellcheck disable=SC1090,SC2154
source "$__topdir/../lib/common.bash"

## default verbosity is 3 (WARN).
if [ -z "$VERBOSE" ]; then
    readonly VERBOSE=3
fi

## repeat a string sequence number of times
__repeat() {
    local num
    local char
    num="$1"
    char="$2"
    yes "$char" | head -n"$num" | tr --delete '\n'
}

## main logging function, accepts verbosity level, color, repeat number for arrow, and message
__log() {
    local verb
    local color
    local num
    local msg
    verb="$1"
    color="$2"
    num="$3"
    msg="$4"
    if [ "$VERBOSE" -ge "$verb" ]; then
        printf "\e[37;1m%s>\e[0m \e[3%d;1m%s\e[0m\n" "$(__repeat "$num" "=")" "$color" "$msg" | fold -w80 -s | sed "2~1s/^/$(__repeat "$num" " ")  /"
    fi
 }

## short hand logging functions (these require the user to pass the repeat number and message)
notify() { __log 0 7 "$1" "$2"; } # Always prints
critical() { __log 1 5 "$1" "$2"; leave 1; }
error() { __log 2 1 "$1" "$2"; }
warn() { __log 3 3 "$1" "$2"; }
inf() { __log 4 6 "$1" "$2"; } # "info" is already a command
debug() { __log 5 4 "$1" "$2"; }

## generated short-hand log functions
for i in {1..5}; do
    eval "notify${i}() { __log 0 7 \"${i}\" \"\$1\"; }"
    eval "critical${i}() { __log 1 5 \"${i}\" \"\$1\"; leave 1; }"
    eval "error${i}() { __log 2 1 \"${i}\" \"\$1\"; }"
    eval "warn${i}() { __log 3 3 \"${i}\" \"\$1\"; }"
    eval "inf${i}() { __log 4 6 \"${i}\" \"\$1\"; }"
    eval "debug${i}() { __log 5 4 \"${i}\" \"\$1\"; }"
done
