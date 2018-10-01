#!/bin/bash

echo "You're about to install «vimio». It will delete all your vim files‼️ "
read -p "Proceed(y/n)❓" answer </dev/tty

if ! [[ "$answer" =~ [yY] ]]; then
	exit 0;
fi

# Check OS
osname=$(uname -s)

echo "🎩 installing «vimio»:"
cd ~

echo "⚙️  downloading latest version"
git clone --depth 1 -b master --recursive https://github.com/gko/vimio

if [[ "$osname" == "Darwin" || "$osname" == "Linux" ]]; then
    echo "🚧 removing current vim settings"
    rm -rf ~/.config/nvim
    rm -rf ~/.vim
    rm -rf ~/.vimrc
    rm -rf vimio

    echo "⚡️ installing..."
    mv vimio ~/.vim
    ln -s ~/.vim/init.vim ~/.vimrc
    mkdir ~/.vim/after
    ln -s ~/.vim/config ~/.vim/after/plugin
    ln -s ~/.vim ~/.config/nvim

    </dev/tty vim +PlugInstall +qall
else
    echo "🚧 removing current vim settings"
    rm -rf ~/vimfiles
    rm -rf ~/_vimrc
    rm -rf ~/vimio

    echo "⚡️ installing..."
    mv ~/vimio/init.vim ~/_vimrc
    mv ~/vimio ~/vimfiles

    echo "🛠 don't forget to run PlugInstall"
fi
