#! /bin/sh 


for fgbg in 38 48; do
	for color in {0..256}; do 
		#echo -en "\\033[${fgbg};5;${color}m ${color}\t\\033[0m";
		code="\\e\[${fgbg};5;${color}m"
		echo -en "\e[${fgbg};5;${color}m ${code}\t\e[0m|";
		(($((${color}+1))%8==0)) && echo;
	done;
	echo -e "\n\n";
done
