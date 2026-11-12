English | [繁體中文](README.zh-TW.md)

# skel-home

an auto-config skeleton to set up your $HOME directory.

## Requirements

```
sudo apt install git curl unzip
```

some configs and scripts also use these tools (install only what you need):

```
vim  tmux  lftp  ctags  dos2unix  indent
```

## Installation

clone the project to your $HOME top and rename to .$USER (ex: ~/.andrew):

```
$ git clone https://github.com/andrewintw/skel-home.git ~/.$USER
$ cd ~/.$USER
```

then either run everything at once:

```
$ ./install.sh
```

or run the steps individually:

```
$ ./init_setup.sh	# backup existing dotfiles, fetch git-completion.bash
$ ./gen_vim.sh		# clone vim plugins and copy vimrc
$ ./gen_links.sh	# link configs into $HOME and hook config/bashrc
```

### optional

```
$ ./add_fonts.sh	# install powerline-fonts
$ ./add_syntastic.sh	# install syntastic vim plugin
```

`init_setup.sh` backs up existing files to `~/.cfgbak` first.
`gen_links.sh` appends a "add by $USER" block to `~/.bashrc` and links
`~/.gitconfig`, `~/.vimrc`, `~/.tmux.conf`, `~/.vim` and `~/.lftp/rc`.

## git identity

the tracked `config/gitconfig` keeps `YOUR_EMAIL` / `YOUR_NAME` placeholders.
put your personal settings in `~/.gitconfig.local`, which is included by
`config/gitconfig` and is not tracked by this repo:

```
$ cat > ~/.gitconfig.local << EOF
[user]
	email = your@email.com
	name = Your Name
EOF
```

if that file does not exist, git silently ignores the include and the
placeholders take effect.

## scripts

there are some useful scripts in the `scripts/` folder. copy them to your
`$HOME` or make symbolic links. for example:

```
$ cd ~
$ ln -s .$USER/scripts/myfind.sh ~
```

| script | description |
| --- | --- |
| `ansi_color_256.sh` | print the 256-color palette |
| `drop_caches.sh` | drop page cache (needs root) |
| `findtypef.sh` | find source files (skips `.svn`) and grep them |
| `gen_ctags.sh` | generate a `tags` file for C/C++/Makefile sources |
| `indent_style.sh` | normalize C source style with `indent` |
| `myfind.sh` | grep across files (skips `.git`) |
| `scp_url.sh` | print `user@ip:/abs/path` for `scp` |
| `synergyc.sh` | start/stop/restart the synergy client |
| `vncservice.sh` | start/stop/restart `vncserver` |

have fun :-)
