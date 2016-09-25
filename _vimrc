" © Copyright 2016 Konstantin Gorodinskiy(mail[at]konstantin.io).
" All Rights Reserved.
" Do What The Fuck You Want To Public License, Version 2,

set nocompatible               " be iMproved
filetype off                   " required!

let mapleader = ","

if has("unix")
    let $VIMHOME = $HOME."/.vim"
    set rtp+=~/.vim/bundle/Vundle.vim/
elseif has("win32") || has("win32s") || has('win64')
    let $VIMHOME = $HOME."/vimfiles"
    set rtp+=~/vimfiles/bundle/Vundle.vim/
endif

call vundle#begin()

"
" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

"General stuff
Plugin 'Lokaltog/vim-easymotion.git'
Plugin 'vim-scripts/TaskList.vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'mattn/emmet-vim.git'
Plugin 'tpope/vim-git.git'
Plugin 'dterei/VimCobaltColourScheme.git'
Plugin 'tpope/vim-vividchalk.git'
"Plugin 'garbas/vim-snipmate.git'
"Plugin 'tomtom/tlib_vim.git'
"Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'honza/vim-snippets.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'lepture/vim-velocity.git'
Plugin 'mikewest/vimroom.git'
"Plugin 'Lokaltog/vim-powerline.git'
Plugin 'bling/vim-airline'
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar.git'
"Plugin 'hallettj/jslint.vim.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'plasticboy/vim-markdown.git'
Plugin 'vim-scripts/mheg.git'
Plugin 'mustache/vim-mustache-handlebars'

"Colorschemes
Plugin 'reedes/vim-colors-pencil'
Plugin 'chriskempson/base16-vim'
Plugin 'trapd00r/neverland-vim-theme.git'
Plugin 'chriskempson/vim-tomorrow-theme.git'
Plugin 'jpo/vim-railscasts-theme.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'twerth/ir_black.git'
Plugin 'nanotech/jellybeans.vim'
Plugin 'trevordmiller/nova-vim'
"Plugin 'tangphillip/SunburstVIM.git'
Plugin 'vim-scripts/Wombat.git'
Plugin 'sjl/badwolf.git'
Plugin 'zaiste/Atom.git'
Plugin 'w0ng/vim-hybrid.git'
"Plugin 'mileszs/ack.vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'scrooloose/syntastic.git'
Plugin 'Shougo/neocomplcache.git'
Plugin 'Shougo/neosnippet-snippets'

" HTML/HAML
    Plugin 'othree/html5.vim.git'
    Plugin 'hokaccha/vim-html5validator.git'
    "Plugin 'tyru/operator-html-escape.vim.git'
    Plugin 'tpope/vim-haml.git'
    Plugin 'gregsexton/MatchTag.git'

" CSS/LESS
    Plugin 'hail2u/vim-css3-syntax.git'
    "Plugin 'ap/vim-css-color.git'
    Plugin 'gorodinskiy/vim-coloresque.git'
    Plugin 'groenewege/vim-less.git'

" JavaScript
    "Plugin 'othree/yajs.vim'
    Plugin 'pangloss/vim-javascript.git'
    "Plugin 'itspriddle/vim-jquery.git'
    Plugin 'kchmck/vim-coffee-script.git'
    Plugin 'walm/jshint.vim.git'
    "Plugin 'jelera/vim-javascript-syntax.git'
    "Plugin 'teramako/jscomplete-vim.git'
    "Plugin 'myhere/vim-nodejs-complete.git'
    "Plugin 'guileen/vim-node.git'

" JSON
    Plugin 'https://github.com/leshill/vim-json.git'

" PHP
    Plugin 'vim-scripts/php.vim--Garvin.git'
    Plugin '2072/PHP-Indenting-for-VIm.git'

" Python/Django
    if has('python')
        "Plugin 'https://github.com/SirVer/ultisnips.git'
        Plugin 'klen/python-mode.git'
        Plugin 'davidhalter/jedi-vim.git'
        let g:pymode_rope = 0
        let g:jedi#auto_vim_configuration = 0
    else
        Plugin 'fs111/pydoc.vim.git'
    endif
    Plugin 'Shougo/neosnippet'

" C/C++
    Plugin 'Rip-Rip/clang_complete.git'
    Plugin 'Shougo/neocomplcache-clang_complete.git'
    "Plugin 'https://github.com/Valloric/YouCompleteMe.git'

" Ruby/Rails
    Plugin 'vim-ruby/vim-ruby.git'
    Plugin 'tpope/vim-rails.git'
    Plugin 'tpope/vim-endwise.git'

" Dart
    Plugin 'dart-lang/dart-vim-plugin.git'

" Jade
    Plugin 'digitaltoad/vim-jade.git'

" Stylus
    Plugin 'wavded/vim-stylus.git'

" Scala
    Plugin 'derekwyatt/vim-scala.git'

call vundle#end()

source $VIMHOME/settings/os.vim
source $VIMHOME/settings/functions.vim
source $VIMHOME/settings/shortcuts.vim
source $VIMHOME/settings/filespecific.vim
source $VIMHOME/settings/overall.vim
source $VIMHOME/settings/ctags.vim
