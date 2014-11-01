" © Copyright 2012 Konstantin Gorodinskiy(gor.konstantin[at]gmail.com). 
" All Rights Reserved.
" Do What The Fuck You Want To Public License, Version 2, 

set nocompatible               " be iMproved
filetype off                   " required!

let mapleader = ","

if has("unix") 
    " ,v
    " Pressing ,v opens the .vimrc in a new tab
    nnoremap <leader>v :on!<CR>:e! $HOME/.vimrc<CR>

    let $VIMHOME = $HOME."/.vim"
    let os = substitute(system('uname'), "\n", "", "")
    let g:clang_use_library=1

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    if os == "Darwin"
        let g:tagbar_ctags_bin='$HOME/.vim/bin/ctags'
        "set clipboard=unnamed
        "let g:clang_library_path=$VIMHOME.'/plugin/clang' 
    elseif os == "Linux"
        let g:tagbar_ctags_bin='/usr/bin/ctags'
        "set clipboard=unnamedplus
        "let g:Powerline_symbols = 'fancy'
    endif
elseif has("win32") || has("win32s") || has('win64')
    " ,v
    " Pressing ,v opens the .vimrc in a new tab
    nnoremap <leader>v :on!<CR>:e! $HOME/_vimrc<CR>

    let $VIMHOME = $HOME."/vimfiles"
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle/')
    language messages en
    let g:tagbar_ctags_bin='$HOME/vimfiles/bin/ctags.exe'
    "set clipboard=unnamed
endif


"
" let Vundle manage Vundle
" required! 
Bundle 'https://github.com/gmarik/vundle.git'

"General stuff
Bundle 'https://github.com/Lokaltog/vim-easymotion.git'
Bundle 'https://github.com/vim-scripts/TaskList.vim.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/mattn/emmet-vim.git'
Bundle 'https://github.com/tpope/vim-git.git'
Bundle 'https://github.com/dterei/VimCobaltColourScheme.git'
Bundle 'https://github.com/tpope/vim-vividchalk.git'
"Bundle 'https://github.com/garbas/vim-snipmate.git'
"Bundle 'https://github.com/tomtom/tlib_vim.git'
"Bundle 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Bundle 'https://github.com/honza/vim-snippets.git'
Bundle 'https://github.com/scrooloose/nerdcommenter'
Bundle 'https://github.com/lepture/vim-velocity.git'
Bundle 'https://github.com/mikewest/vimroom.git'
"Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'https://github.com/bling/vim-airline'
Bundle 'https://github.com/sjl/gundo.vim'
Bundle 'https://github.com/majutsushi/tagbar.git'
"Bundle 'https://github.com/hallettj/jslint.vim.git'
Bundle 'https://github.com/kien/ctrlp.vim.git'
Bundle 'https://github.com/plasticboy/vim-markdown.git'
Bundle 'https://github.com/vim-scripts/mheg.git'

"Colorschemes
Bundle 'https://github.com/reedes/vim-colors-pencil'
Bundle 'https://github.com/chriskempson/base16-vim'
Bundle 'https://github.com/trapd00r/neverland-vim-theme.git'
Bundle 'https://github.com/chriskempson/vim-tomorrow-theme.git'
Bundle 'https://github.com/jpo/vim-railscasts-theme.git'
Bundle 'https://github.com/altercation/vim-colors-solarized.git'
Bundle 'https://github.com/twerth/ir_black.git'
Bundle 'https://github.com/nanotech/jellybeans.vim'
Bundle 'https://github.com/tangphillip/SunburstVIM.git'
Bundle 'https://github.com/vim-scripts/Wombat.git'
Bundle 'https://github.com/sjl/badwolf.git'
Bundle 'https://github.com/zaiste/Atom.git'
Bundle 'https://github.com/w0ng/vim-hybrid.git'

" HTML/HAML
    Bundle 'https://github.com/othree/html5.vim.git'
    Bundle 'https://github.com/hokaccha/vim-html5validator.git'
    "Bundle 'https://github.com/tyru/operator-html-escape.vim.git'
    Bundle 'https://github.com/tpope/vim-haml.git'
    Bundle 'https://github.com/gregsexton/MatchTag.git'
" CSS/LESS
    Bundle 'https://github.com/hail2u/vim-css3-syntax.git'
    "Bundle 'https://github.com/ap/vim-css-color.git'
    Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
    Bundle 'https://github.com/groenewege/vim-less.git'
" JavaScript
    Bundle 'https://github.com/pangloss/vim-javascript.git'
    Bundle 'https://github.com/itspriddle/vim-jquery.git'
    Bundle 'https://github.com/kchmck/vim-coffee-script.git'
    Bundle 'https://github.com/walm/jshint.vim.git'
    Bundle 'https://github.com/jelera/vim-javascript-syntax.git'
    "Bundle 'https://github.com/teramako/jscomplete-vim.git'
    "Bundle 'https://github.com/myhere/vim-nodejs-complete.git'
    "Bundle 'https://github.com/guileen/vim-node.git'
" JSON
    Bundle 'https://github.com/leshill/vim-json.git'
" PHP
    Bundle 'https://github.com/vim-scripts/php.vim--Garvin.git'
    Bundle 'https://github.com/2072/PHP-Indenting-for-VIm.git'
" Python/Django
    if has('python')
        "Bundle 'https://github.com/SirVer/ultisnips.git'
        Bundle 'https://github.com/klen/python-mode.git'
        Bundle 'https://github.com/davidhalter/jedi-vim.git'
        let g:pymode_rope = 0
        let g:jedi#auto_vim_configuration = 0
    else
        Bundle 'https://github.com/fs111/pydoc.vim.git'
    endif
    Bundle 'https://github.com/Shougo/neosnippet'

    Bundle 'https://github.com/Shougo/neocomplcache.git'
    Bundle 'https://github.com/Rip-Rip/clang_complete.git'
    Bundle 'https://github.com/Shougo/neocomplcache-clang_complete.git'
    "Bundle 'https://github.com/Valloric/YouCompleteMe.git'
 
" Ruby/Rails
    Bundle 'https://github.com/vim-ruby/vim-ruby.git'
    Bundle 'https://github.com/tpope/vim-rails.git'
    Bundle 'https://github.com/tpope/vim-endwise.git'
"Dart
    Bundle 'https://github.com/dart-lang/dart-vim-plugin.git'
" Jade
    Bundle 'https://github.com/digitaltoad/vim-jade.git'
" Stylus
    Bundle 'https://github.com/wavded/vim-stylus.git'
" Scala
    Bundle 'https://github.com/derekwyatt/vim-scala.git'
    "Bundle 'https://github.com/gorodinskiy/scala-vim-snippets.git'

source $VIMHOME/settings/functions.vim
source $VIMHOME/settings/shortcuts.vim
source $VIMHOME/settings/filespecific.vim
source $VIMHOME/settings/overall.vim
source $VIMHOME/settings/ctags.vim
