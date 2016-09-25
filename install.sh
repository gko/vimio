#!/bin/bash

# Check os
osname=$(uname -s)

if [[ "$osname" == "Darwin" ]]; then
    RESET='\x1B[0m'
    GREEN='\x1B[0;32m'        # Green
    BGREEN='\x1B[1;32m'       # Green
else
    RESET='\e[0m'
    GREEN='\e[0;32m'        # Green
    BGREEN='\e[1;32m'       # Green
fi

if [[ "$osname" == "Darwin" || "$osname" == "Linux" ]]; then

    echo -e ""
    echo -e "$BGREEN       _____ "
    echo -e "$BGREEN/\   /\\_    \/\/\ "
    echo -e "$BGREEN\ \ / / / /\/    \ "
    echo -e "$BGREEN \ V /\/ /_/ /\/\ \ "
    echo -e "$BGREEN  \_/\____/\/    \/ "
    echo -e "$RESET"

    cd
    rm -rf $HOME/.vim
    rm -rf $HOME/.vimrc
    rm -rf vim-settings
    git clone --depth 1 -b dev --recursive https://github.com/gko/vimio.git vim-settings
    mv vim-settings/_vimrc $HOME/.vimrc
    mv vim-settings $HOME/.vim
    cd .vim
    mv .ctags ../

    #copy fonts for Linux only
    if [[ "$osname" == "Linux" ]]; then
        mkdir -p ~/.fonts/
        cp fonts/* ~/.fonts/
    fi

    chmod +x bin/ctags
    cd

    </dev/tty vim +BundleInstall +qall

else

    echo ""
    echo "       _____ "
    echo "/\   /\\_    \/\/\ "
    echo "\ \ / / / /\/    \ "
    echo " \ V /\/ /_/ /\/\ \ "
    echo "  \_/\____/\/    \/ "
    echo ""
    echo "...don't forget to do :BundleInstall in vim to install plugins"

    cd
    rm -rf vimfiles
    rm -rf _vimrc
    rm -rf vim-settings
    git clone --depth 1 -b dev --recursive https://github.com/gko/vimio.git vim-settings
    mv vim-settings/_vimrc _vimrc
    mv vim-settings vimfiles
    mv vimfiles/.ctags ./
    cd

fi
