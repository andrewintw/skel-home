#! /bin/sh

print_info () {
	local msg=$1
	echo "INFO >> $msg"
}

if [ -f ~/.bashrc ]; then
	grep -w "add by $USER" ~/.bashrc > /dev/null
	if [ "$?" != "0" ]; then
	print_info "append my config to ~/.bashrc"
	cat << EOF >> ~/.bashrc


# === add by $USER ===
if [ -f ~/.$USER/config/bashrc ]; then
	. ~/.$USER/config/bashrc
fi
# === end
EOF
	fi
fi

if [ ! -f ~/.gitconfig ]; then
	print_info "linking ~/.gitconfig"
	ln -sv .$USER/config/gitconfig ~/.gitconfig
fi

if [ ! -f ~/.vimrc ]; then
	print_info "linking ~/.vimrc"
	ln -sv .$USER/config/vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ]; then
	print_info "linking ~/.vim/"
	ln -sv .$USER/vim ~/.vim
fi

if [ ! -d ~/.lftp ]; then
	print_info "linking ~/.lftp"
	mkdir -p ~/.lftp
	ln -sv .$USER/config/lftp.rc ~/.lftp/rc
fi

print_info "DONE, have fun :-)"
