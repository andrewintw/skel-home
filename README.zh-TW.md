[English](README.md) | 繁體中文

# skel-home

自動化設定你的 `$HOME` 目錄的 dotfiles 骨架。

## 需求

```
sudo apt install git curl unzip
```

部分設定與腳本還會用到以下工具（視需要安裝）：

```
vim  tmux  lftp  ctags  dos2unix  indent
```

## 安裝

把專案 clone 到 `$HOME` 下，並改名為 `.$USER`（例如 `~/.andrew`）：

```
$ git clone https://github.com/andrewintw/skel-home.git ~/.$USER
$ cd ~/.$USER
```

再一次全部執行：

```
$ ./install.sh
```

或依序執行各個步驟：

```
$ ./init_setup.sh	# 備份既有 dotfiles、下載 git-completion.bash
$ ./gen_vim.sh		# clone vim 外掛並複製 vimrc
$ ./gen_links.sh	# 將設定連結到 $HOME 並掛載 config/bashrc
```

### 選用

```
$ ./add_fonts.sh	# 安裝 powerline-fonts
$ ./add_syntastic.sh	# 安裝 syntastic vim 外掛
```

`init_setup.sh` 會先將既有檔案備份到 `~/.cfgbak`。
`gen_links.sh` 會在 `~/.bashrc` 附加一段「add by $USER」區塊，並連結
`~/.gitconfig`、`~/.vimrc`、`~/.tmux.conf`、`~/.vim` 與 `~/.lftp/rc`。

## git 身分設定

版控中的 `config/gitconfig` 保留 `YOUR_EMAIL` / `YOUR_NAME` 佔位符。
請把個人設定放到 `~/.gitconfig.local`，它會被 `config/gitconfig` include，
且不納入本 repo 版控：

```
$ cat > ~/.gitconfig.local << EOF
[user]
	email = your@email.com
	name = Your Name
EOF
```

若該檔案不存在，git 會靜默忽略這個 include，佔位符就會生效。

## 腳本

`scripts/` 資料夾內有一些實用腳本。可以複製到 `$HOME`，或建立符號連結。
例如：

```
$ cd ~
$ ln -s .$USER/scripts/myfind.sh ~
```

| 腳本 | 說明 |
| --- | --- |
| `ansi_color_256.sh` | 顯示 256 色調色盤 |
| `drop_caches.sh` | 清除 page cache（需要 root） |
| `findtypef.sh` | 尋找原始碼檔（略過 `.svn`）並 grep |
| `gen_ctags.sh` | 為 C/C++/Makefile 來源產生 `tags` |
| `indent_style.sh` | 用 `indent` 統一 C 原始碼風格 |
| `myfind.sh` | 跨檔案 grep（略過 `.git`） |
| `scp_url.sh` | 印出可供 `scp` 使用的 `user@ip:/abs/path` |
| `synergyc.sh` | 啟動/停止/重啟 synergy client |
| `vncservice.sh` | 啟動/停止/重啟 `vncserver` |

祝你使用愉快 :-)
