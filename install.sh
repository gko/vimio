#!/bin/bash

echo "You're about to install «vimio». It will delete all your vim files‼️ "
read -p "Proceed(y/n)❓" answer </dev/tty

if ! [[ "$answer" =~ [yY] ]]; then
	exit 0;
fi

# Check OS
osname=$(uname -s)

if [[ "$osname" == "Darwin" || "$osname" == "Linux" ]]; then
	echo "🎩 installing «vimio»:" 
	cd ~

	echo "🚧 removing current vim settings"
	rm -rf ~/.config/nvim
	rm -rf ~/.vim > /dev/null
	rm -rf ~/.vimrc > /dev/null
	rm -rf vimio > /dev/null

	echo "⚙️  downloading latest version"
	git clone --depth 1 -b TECH_moveToVimPlug --recursive https://github.com/gko/vimio.git vimio

	echo "⚡️ installing..."
	cp vimio/_vimrc ~/.vimrc > /dev/null
	mv vimio/_vimrc vimio/init.vim
	mv vimio ~/.vim > /dev/null
	mkdir ~/.config
	ln -s ~/.vim ~/.config/nvim

	cd .vim > /dev/null
	mv .ctags ../ > /dev/null
	chmod +x bin/ctags > /dev/null
	cd ~ > /dev/null
	cp ~ 

	</dev/tty vim +PlugInstall +qall
fi
