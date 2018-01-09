#! /bin/sh

git clone https://github.com/andrewintw/skel-home.git ~/.$USER
cp gen_vim.sh ~/.$USER

cd ~/.$USER && \
./init_setup.sh && \
./gen_vim.sh && \
./gen_links.sh && \
./add_fonts.sh && \
./add_syntastic.sh && \

echo "done. ;-)"
echo "now, edit ~/.$USER/config/gitconfig"
