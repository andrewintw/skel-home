#! /bin/sh

# find . -type f -not -path '*/\.git/*'
# find . -type f -not -path '*/\.svn/*'

if [ $# -gt 1 ]; then
	find -L -type f -not -path '*/\.git/*' -not -name "tags" | xargs grep --color "$1" "$2" 2>/dev/null
else
	find -L -type f -not -path '*/\.git/*' -not -name "tags" | xargs grep --color "$1" 2>/dev/null
fi
