#!/bin/bash

# Check os
osname=$(uname -s)

if [[ "$osname" == "Darwin" ]]; then
# Reset
    RESET='\x1B[0m'
    RED='\x1B[0;31m'          # Red
    GREEN='\x1B[0;32m'        # Green
    YELLOW='\x1B[0;33m'       # Yellow
    BLUE='\x1B[0;34m'         # Blue
    PURPLE='\x1B[0;35m'       # Purple
    CYAN='\x1B[0;36m'         # Cyan
    WHITE='\x1B[0;37m'        # White

# Bold
    BRED='\x1B[1;31m'         # Red
    BGREEN='\x1B[1;32m'       # Green
    BYELLOW='\x1B[1;33m'      # Yellow
    BBLUE='\x1B[1;34m'        # Blue
    BPURPLE='\x1B[1;35m'      # Purple
    BCYAN='\x1B[1;36m'        # Cyan
    BWHITE='\x1B[1;37m'       # White
else
# Reset
    RESET='\e[0m'
    RED='\e[0;31m'          # Red
    GREEN='\e[0;32m'        # Green
    YELLOW='\e[0;33m'       # Yellow
    BLUE='\e[0;34m'         # Blue
    PURPLE='\e[0;35m'       # Purple
    CYAN='\e[0;36m'         # Cyan
    WHITE='\e[0;37m'        # White

# Bold
    BRED='\e[1;31m'         # Red
    BGREEN='\e[1;32m'       # Green
    BYELLOW='\e[1;33m'      # Yellow
    BBLUE='\e[1;34m'        # Blue
    BPURPLE='\e[1;35m'      # Purple
    BCYAN='\e[1;36m'        # Cyan
    BWHITE='\e[1;37m'       # White
fi

if [[ "$osname" == "Darwin" ]]; then
    cd
    rm -rf $HOME/.vim
    rm -rf $HOME/.vimrc
    rm -rf vim-settings
    git clone --depth 1 --recursive https://github.com/gorodinskiy/vim-settings.git
    mv vim-settings/_vimrc $HOME/.vimrc
    mv vim-settings $HOME/.vim
    cd .vim
    chmod +x bin/ctags
    cd
    vim +BundleInstall +qall

    echo ""
    echo "$GREEN       _____ "      
    echo "$GREEN/\   /\\_    \/\/\ "  
    echo "$GREEN\ \ / / / /\/    \ " 
    echo "$GREEN \ V /\/ /_/ /\/\ \ "
    echo "$GREEN  \_/\____/\/    \/ "
    echo "$RESET"
elif [[ "$osname" == "Linux" ]]; then
    cd
    rm -rf $HOME/.vim
    rm -rf $HOME/.vimrc
    rm -rf vim-settings
    git clone --depth 1 --recursive https://github.com/gorodinskiy/vim-settings.git
    mv vim-settings/_vimrc $HOME/.vimrc
    mv vim-settings $HOME/.vim
    cd .vim
    chmod +x bin/ctags
    cd
    vim +BundleInstall +qall

    echo -e ""
    echo -e "$GREEN       _____ "      
    echo -e "$GREEN/\   /\\_    \/\/\ "  
    echo -e "$GREEN\ \ / / / /\/    \ " 
    echo -e "$GREEN \ V /\/ /_/ /\/\ \ "
    echo -e "$GREEN  \_/\____/\/    \/ "
    echo -e "$RESET"
else
    cd
    rm -rf vimfiles
    rm -rf _vimrc
    rm -rf vim-settings
    git clone --depth 1 --recursive https://github.com/gorodinskiy/vim-settings.git
    mv vim-settings/_vimrc _vimrc
    mv vim-settings vimfiles
    rm -rf vimfiles/bundle/vundle
    git clone http://github.com/gmarik/vundle.git vimfiles/bundle/vundle

    echo ""
    echo "       _____ "      
    echo "/\   /\\_    \/\/\ "  
    echo "\ \ / / / /\/    \ " 
    echo " \ V /\/ /_/ /\/\ \ "
    echo "  \_/\____/\/    \/ "
    echo ""
    echo "...don't forget to do :BundleInstall in vim to install plugins"
fi
