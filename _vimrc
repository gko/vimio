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

    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()

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
    autocmd BufRead * silent! :%s/\r\+$//e

    " ,v
    " Pressing ,v opens the .vimrc in a new tab
    nnoremap <leader>v :on!<CR>:e! $HOME/_vimrc<CR>

    let $VIMHOME = $HOME."/vimfiles"
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    call vundle#begin()
    language messages en
    let g:tagbar_ctags_bin='$HOME/vimfiles/bin/ctags.exe'
    "set clipboard=unnamed
endif


"
" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

"General stuff
Plugin 'https://github.com/Lokaltog/vim-easymotion.git'
Plugin 'https://github.com/vim-scripts/TaskList.vim.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/mattn/emmet-vim.git'
Plugin 'https://github.com/tpope/vim-git.git'
Plugin 'https://github.com/dterei/VimCobaltColourScheme.git'
Plugin 'https://github.com/tpope/vim-vividchalk.git'
"Plugin 'https://github.com/garbas/vim-snipmate.git'
"Plugin 'https://github.com/tomtom/tlib_vim.git'
"Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'https://github.com/honza/vim-snippets.git'
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'https://github.com/lepture/vim-velocity.git'
Plugin 'https://github.com/mikewest/vimroom.git'
"Plugin 'https://github.com/Lokaltog/vim-powerline.git'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/sjl/gundo.vim'
Plugin 'https://github.com/majutsushi/tagbar.git'
"Plugin 'https://github.com/hallettj/jslint.vim.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/plasticboy/vim-markdown.git'
Plugin 'https://github.com/vim-scripts/mheg.git'

"Colorschemes
Plugin 'https://github.com/reedes/vim-colors-pencil'
Plugin 'https://github.com/chriskempson/base16-vim'
Plugin 'https://github.com/trapd00r/neverland-vim-theme.git'
Plugin 'https://github.com/chriskempson/vim-tomorrow-theme.git'
Plugin 'https://github.com/jpo/vim-railscasts-theme.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/twerth/ir_black.git'
Plugin 'https://github.com/nanotech/jellybeans.vim'
"Plugin 'https://github.com/tangphillip/SunburstVIM.git'
Plugin 'https://github.com/vim-scripts/Wombat.git'
Plugin 'https://github.com/sjl/badwolf.git'
Plugin 'https://github.com/zaiste/Atom.git'
Plugin 'https://github.com/w0ng/vim-hybrid.git'

" HTML/HAML
    Plugin 'https://github.com/othree/html5.vim.git'
    Plugin 'https://github.com/hokaccha/vim-html5validator.git'
    "Plugin 'https://github.com/tyru/operator-html-escape.vim.git'
    Plugin 'https://github.com/tpope/vim-haml.git'
    Plugin 'https://github.com/gregsexton/MatchTag.git'

" CSS/LESS
    Plugin 'https://github.com/hail2u/vim-css3-syntax.git'
    "Plugin 'https://github.com/ap/vim-css-color.git'
    Plugin 'https://github.com/gorodinskiy/vim-coloresque.git'
    Plugin 'https://github.com/groenewege/vim-less.git'

" JavaScript
    Plugin 'othree/yajs.vim'
    "Plugin 'https://github.com/pangloss/vim-javascript.git'
    "Plugin 'https://github.com/itspriddle/vim-jquery.git'
    Plugin 'https://github.com/kchmck/vim-coffee-script.git'
    Plugin 'https://github.com/walm/jshint.vim.git'
    "Plugin 'https://github.com/jelera/vim-javascript-syntax.git'
    "Plugin 'https://github.com/teramako/jscomplete-vim.git'
    "Plugin 'https://github.com/myhere/vim-nodejs-complete.git'
    "Plugin 'https://github.com/guileen/vim-node.git'

" JSON
    Plugin 'https://github.com/leshill/vim-json.git'

" PHP
    Plugin 'https://github.com/vim-scripts/php.vim--Garvin.git'
    Plugin 'https://github.com/2072/PHP-Indenting-for-VIm.git'

" Python/Django
    if has('python')
        "Plugin 'https://github.com/SirVer/ultisnips.git'
        Plugin 'https://github.com/klen/python-mode.git'
        Plugin 'https://github.com/davidhalter/jedi-vim.git'
        let g:pymode_rope = 0
        let g:jedi#auto_vim_configuration = 0
    else
        Plugin 'https://github.com/fs111/pydoc.vim.git'
    endif
    Plugin 'https://github.com/Shougo/neosnippet'

    Plugin 'https://github.com/Shougo/neocomplcache.git'
    Plugin 'https://github.com/Shougo/neosnippet-snippets'
    Plugin 'https://github.com/Rip-Rip/clang_complete.git'
    Plugin 'https://github.com/Shougo/neocomplcache-clang_complete.git'
    "Plugin 'https://github.com/Valloric/YouCompleteMe.git'
 
" Ruby/Rails
    Plugin 'https://github.com/vim-ruby/vim-ruby.git'
    Plugin 'https://github.com/tpope/vim-rails.git'
    Plugin 'https://github.com/tpope/vim-endwise.git'

"Dart
    Plugin 'https://github.com/dart-lang/dart-vim-plugin.git'

" Jade
    Plugin 'https://github.com/digitaltoad/vim-jade.git'

" Stylus
    Plugin 'https://github.com/wavded/vim-stylus.git'

" Scala
    Plugin 'https://github.com/derekwyatt/vim-scala.git'
    "Plugin 'https://github.com/gorodinskiy/scala-vim-snippets.git'

call vundle#end()

source $VIMHOME/settings/functions.vim
source $VIMHOME/settings/shortcuts.vim
source $VIMHOME/settings/filespecific.vim
source $VIMHOME/settings/overall.vim
source $VIMHOME/settings/ctags.vim
