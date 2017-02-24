#! /bin/sh

# improve 'find' by skipping .svn directories
# find ! -path "*/.svn/*"  <-- seems not work well


KEY=$1
OPT=$2

(find -not -iwholename '*.svn*' -type f -name "*.[ch]" -o -name "*.[Ss]" -o -name "*.db" -o -name "*.sh" -o -name "*akefile" -o -name "*.mk" -o -name "*.lua" -o -name "*.htm" -o -name "*.html" -o -name "*.css" -o -name "*.xml" | xargs grep --color $OPT "$KEY") 2>/dev/null
