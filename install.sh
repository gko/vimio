#!/bin/bash

# Check OS
osname=$(uname -s)

if [[ "$osname" == "Darwin" || "$osname" == "Linux" ]]; then
	echo "🎩 installing «vimio»:" 
	cd ~
	echo "🚧 removing current vim settings"
	rm -rf $HOME/.vim > /dev/null
	rm -rf $HOME/.vimrc > /dev/null
	rm -rf vimio > /dev/null
	echo "⚙️  downloading latest version"
	git clone --depth 1 -b  --recursive https://github.com/gko/vimio.git vimio > /dev/null
	echo "⚡️ installing..."
	mv vimio/_vimrc ~/.vimrc > /dev/null
	mv vimio ~/.vim > /dev/null
	cd .vim > /dev/null
	mv .ctags ../ > /dev/null
	chmod +x bin/ctags > /dev/null
	cd ~ > /dev/null
	</dev/tty vim +PlugInstall +qall
fi
