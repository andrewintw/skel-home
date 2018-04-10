#! /bin/sh

if [ `whoami` = "root" ]; then
	free && sync && echo 3 > /proc/sys/vm/drop_caches && free
else
	echo "only root can do that :-(" >&2
	exit 1
fi
