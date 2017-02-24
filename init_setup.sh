#! /bin/sh

BAKDIR=~/.cfgbak

print_info () {
	local msg=$1
	echo "INFO >> $msg"
}

mkdir -p $BAKDIR

if [ -f ~/.bashrc ]; then
	print_info "backup ~/.bashrc"
	cp -v ~/.bashrc $BAKDIR/bashrc.ORIG
fi

if [ -f ~/.gitconfig ]; then
	print_info "move ~/.gitconfig"
	mv -v ~/.gitconfig $BAKDIR/gitconfig.ORIG
fi

if [ -f ~/.vimrc ]; then
	print_info "move ~/.vimrc"
	mv -v ~/.vimrc $BAKDIR/vimrc.ORIG
fi

if [ -d ~/.vim ]; then
	print_info "move ~/.vim"
	mv -v ~/.vim $BAKDIR/vim.ORIG
fi

if [ -f config/git-completion.bash ]; then
	rm -rf config/git-completion.bash
fi

curl -LSso config/git-completion.bash 'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash'

print_info "DONE"
