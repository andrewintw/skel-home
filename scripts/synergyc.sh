#! /bin/sh

server_ip=$2

if [ "$server_ip" = "" ]; then
    server_ip=192.168.90.100;
fi

start_vnc () {
	synergyc --daemon --restart $server_ip
}

stop_vnc () {
	killall -q synergyc
}

restart_vnc () {
	stop_vnc
	start_vnc
}

show_netstat () {
	netstat -lpntu | grep vnc
}

case $1 in
	"restart")
		restart_vnc
		show_netstat
		;;
	"start")
		stop_vnc
		start_vnc
		;;
	"stop")
		stop_vnc
		;;
	*)
		echo "Usage: $0 <restart|start|stop> <server_ip>"
		;;
esac
