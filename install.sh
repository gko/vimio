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

rm -rf ~/vimio
rm -rf ~/.fzf

echo "⚙️  downloading latest version"
# git pull --unshallow
# to get all revisions
git clone --depth 1 -b main --recursive https://github.com/gko/vimio

if [[ "$osname" == "Darwin" || "$osname" == "Linux" ]]; then
    echo "🚧 removing current vim settings"
    rm -rf ~/.config/nvim
    rm -rf ~/.vim
    rm -rf ~/.vimrc

    echo "⚡️ installing..."
    mv ~/vimio ~/.vim
    ln -s ~/.vim/init.vim ~/.vimrc
    # in case it doesn't exist
    mkdir ~/.config
    ln -s ~/.vim ~/.config/nvim

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # install via neovim if it exists
    if type nvim &> /dev/null; then
        </dev/tty nvim +PlugInstall +qall
    else
        </dev/tty vim +PlugInstall +qall
    fi
else
    echo "🚧 removing current vim settings"
    rm -rf ~/vimfiles
    rm -rf ~/_vimrc

    echo "⚡️ installing..."
    mv ~/vimio/init.vim ~/_vimrc
    mv ~/vimio ~/vimfiles

    curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    echo "🛠 please run PlugInstall from within vim"
fi

echo -e "\n\nDone!\n\nDon't forget to install ripgrep, fzf, sed  and npm for more features.\n\nMore info here: https://github.com/gko/vimio#prerequisites"
