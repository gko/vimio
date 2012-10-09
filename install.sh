if [[ `uname` = "Linux" || `uname` = "Darwin" ]]; then
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
fi
