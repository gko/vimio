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
    rm -rf vimio
    git clone --depth 1 --recursive https://github.com/gorodinskiy/vimio.git
    mv vimio/_vimrc $HOME/.vimrc
    mv vimio $HOME/.vim
    cd .vim
    mv .ctags ../
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
    rm -rf vimio
    git clone --depth 1 --recursive https://github.com/gorodinskiy/vimio.git
    mv vimio/_vimrc _vimrc
    mv vimio vimfiles
    mv vimfiles/.ctags ./
    cd
    
fi
