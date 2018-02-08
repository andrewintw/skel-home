#! /bin/sh

OPTS=$*
find -type f | xargs grep --color $OPTS 2>/dev/null
