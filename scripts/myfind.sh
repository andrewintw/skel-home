#! /bin/sh

if [ $# = 1 ]; then
	find -type f | xargs grep --color "$1" 2>/dev/null
elif [ $# = 2 ]; then
	find -type f | xargs grep --color "$1" "$2" 2>/dev/null
fi
