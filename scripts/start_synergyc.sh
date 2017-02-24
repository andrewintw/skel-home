#! /bin/sh

server_ip=$1

if [ "$server_ip" = "" ]; then
	server_ip=192.168.90.100;
fi

killall -q synergyc
synergyc --daemon --restart $server_ip
