#! /bin/sh
#-kr default:
#            -nbad -bap -bbo -nbc -br -brs -c33 -cd33 -ncdb -ce -ci4 -cli0
#            -cp33 -cs -d0 -di1 -nfc1 -nfca -hnl -i4 -ip0 -l75 -lp -npcs
#            -nprs -npsl -saf -sai -saw -nsc -nsob -nss

which dos2unix 1> /dev/null && dos2unix $1
chmod a-x $1
indent $1 -kr -bad -bbb -bli0 -i4 -ts4 -ut -l100 -nbs -ss -cdw -cli0 -cbi4
