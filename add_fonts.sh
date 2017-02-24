#! /bin/sh

print_info () {
	local msg=$1
	echo "INFO >> $msg"
}

mkdir -p fonts

print_info "install powerline-fonts"
git clone -q https://github.com/Lokaltog/powerline-fonts.git fonts/powerline-fonts
if [ -f fonts/powerline-fonts/install.sh ]; then
	cd fonts/powerline-fonts
	./install.sh
	cd ../../
fi
rm -rf fonts

print_info "DONE, have fun :-)"
