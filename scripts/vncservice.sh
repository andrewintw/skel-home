#! /bin/sh

DISPLAY=1

start_vnc () {
	vncserver :${DISPLAY}
}

stop_vnc () {
	vncserver -kill :${DISPLAY}
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
		echo "Usage: $0 <restart|start|stop>"
		;;
esac
