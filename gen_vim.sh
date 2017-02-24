#! /bin/sh

print_info () {
	local msg=$1
	echo "INFO >> $msg"
}

mkdir -p vim/autoload vim/bundle vim/syntax

print_info "install ctrlp"
git clone -q https://github.com/kien/ctrlp.vim.git          vim/bundle/ctrlp.vim

print_info "install molokai"
git clone -q https://github.com/tomasr/molokai.git          vim/bundle/molokai

print_info "install nerdtree"
git clone -q https://github.com/scrooloose/nerdtree.git     vim/bundle/nerdtree

print_info "install vim-airline"
git clone -q https://github.com/vim-airline/vim-airline.git    vim/bundle/vim-airline
git clone -q https://github.com/vim-airline/vim-airline-themes vim/bundle/vim-airline-themes

print_info "install taglist"
mkdir -p vim/bundle/taglist_46 && \
curl -LSso taglist_46.zip https://downloads.sourceforge.net/project/vim-taglist/vim-taglist/4.6/taglist_46.zip && \
unzip -qq taglist_46.zip -d vim/bundle/taglist_46 && \
rm -rf taglist_46.zip

print_info "install pathogen"
curl -LSso vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

print_info "install syntax"
curl -LSso vim/syntax/arduino.vim 'http://www.vim.org/scripts/download_script.php?src_id=23284'

print_info "copy vimrc"
cp config/vimrc vim

print_info "DONE, have fun :-)"
