#! /bin/sh

scppath="$1"

if [ "$scppath" = "" ]; then
	target="$PWD"
else
	target=`realpath $scppath`
fi

if [ ! -e "$target" ]; then
	echo "$target is NOT exist"
	exit 1
fi

if=`route -n | grep -w UG | head -n 1 | awk  '{print $8}'`
ip=`ifconfig $if | grep -w inet | awk '{print $2}'`
path=`readlink -f $target`

echo "`whoami`@$ip:$path"
