# skel-home

a auto-config skeleton for set up your $HOME directory


## Requirements

```
sudo apt install unzip curl
```

## Installation

clone the project to your $HOME top and rename to .$USER (ex: ~/.andrew )

```
$ git clone git@github.com:andrewintw/skel-home.git ~/.$USER

$ cd ~/.$USER
$ ./init_setup.sh
$ ./gen_vim.sh
$ ./gen_links.sh
```

### optional

```
$ ./add_fonts.sh		# install powerline-fonts
$ ./add_syntastic.sh	# install syntastic vim plugin
```

after that, you might need to modify the file:

```
$ vi ~/.$USER/config/gitconfig
```

and there are some useful scripts in ~/.$USER/scripts folder.
you can copy to your $HOME or make a symbolic link to the script.

for example:

```
$ cd ~ 
$ ln -s .$USER/scripts/myfind.sh ~
```

have fun :-)
