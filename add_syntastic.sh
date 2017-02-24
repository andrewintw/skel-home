#! /bin/sh

print_info () {
	local msg=$1
	echo "INFO >> $msg"
}

print_info "install syntastic"
git clone -q --depth=1 https://github.com/vim-syntastic/syntastic.git vim/bundle/syntastic
print_info "DONE, have fun :-)"
