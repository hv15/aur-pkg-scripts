##
## implementes common/shared functions
##

# shellcheck shell=bash

## a wrapper around exit (accepts the same arguments)
leave() {
    # shellcheck disable=SC2154
    if [ -z "$__testsuite" ]; then
        exit "$1"
    fi
}
