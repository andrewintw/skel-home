#!/bin/sh

#CAP="libhelper-1.0.0.0 libugwhelper-1.0.4.0 libscapi-1.0.5.0 libubox-2015-11-08 csd-1.0.10.0 "
#CAP+="libdeviceinfo-1.0.0.10 libdiagnostics-1.0.3.0 libethservices-1.0.0 libfirewallnat-1.0.0.31 libipv6-1.0.0 liblanservices-1.2.6.0 libmanagementserver-1.0.0.14 libmcastservices-1.0.0.3 libmyserv-1.0.0 libnetwork-1.13.0.0 libqos-1.0.2 libsyslogng-1.0.0 libsysservices-1.0.0 libupgrade-1.0.0 libuser-1.0.0 libwlan-1.0.0 servd-1.6.0.0 fapi_wlan_common-1.0.0"

#echo $CAP

#find $CAP -type f -name "*.[ch]" -o -name "*.db" -o -name "*.cc" -o -name "*.[sS]" -o -name Makefile | sed -e 's/^/"/' -e 's/$/"/' | xargs /usr/bin/ctags -a --langmap=c++:.ino

find $* -type f -name "*.[ch]" -o -name "*.db" -o -name "*.cc" -o -name "*.[sS]" -o -name "*.ino" -o -name "*.pde" -o -name Makefile | sed -e 's/^/"/' -e 's/$/"/' | xargs /usr/bin/ctags -a --langmap=c++:.ino

#ctags -R -a --c-kinds=+l --c++-kinds=+l --fields=+iaS --extra=+q --languages=-all,+c,+c++
