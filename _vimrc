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
        let g:Powerline_symbols = 'compatible'
        "let g:clang_library_path=$VIMHOME.'/plugin/clang' 
    elseif os == "Linux"
        let g:tagbar_ctags_bin='/usr/bin/ctags'
        let g:Powerline_symbols = 'compatible'
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
    let g:Powerline_symbols = 'compatible'
endif

"
" let Vundle manage Vundle
" required! 
Bundle 'https://github.com/gmarik/vundle.git'

"General stuff
Bundle 'https://github.com/Lokaltog/vim-easymotion.git'
Bundle 'https://github.com/vim-scripts/TaskList.vim.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/mattn/zencoding-vim.git'
Bundle 'https://github.com/tpope/vim-git.git'
Bundle 'https://github.com/dterei/VimCobaltColourScheme.git'
Bundle 'https://github.com/tpope/vim-vividchalk.git'
"Bundle 'https://github.com/garbas/vim-snipmate.git'
"Bundle 'https://github.com/tomtom/tlib_vim.git'
"Bundle 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Bundle 'https://github.com/honza/vim-snippets.git'
Bundle 'https://github.com/scrooloose/nerdcommenter'
Bundle 'https://github.com/lepture/vim-velocity.git'
Bundle 'https://github.com/Shougo/neocomplcache.git'
Bundle 'https://github.com/Shougo/neosnippet'
Bundle 'https://github.com/mikewest/vimroom.git'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'https://github.com/majutsushi/tagbar.git'
"Bundle 'https://github.com/hallettj/jslint.vim.git'
Bundle 'https://github.com/Rip-Rip/clang_complete.git'
Bundle 'https://github.com/Shougo/neocomplcache-clang_complete.git'
Bundle 'https://github.com/kien/ctrlp.vim.git'
Bundle 'https://github.com/plasticboy/vim-markdown.git'
Bundle 'https://github.com/vim-scripts/mheg.git'

"Colorschemes
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
    Bundle 'https://github.com/ap/vim-css-color.git'
    Bundle 'https://github.com/groenewege/vim-less.git'
" JavaScript
    Bundle 'https://github.com/pangloss/vim-javascript.git'
    Bundle 'https://github.com/itspriddle/vim-jquery.git'
    Bundle 'https://github.com/kchmck/vim-coffee-script.git'
    Bundle 'https://github.com/walm/jshint.vim.git'
    Bundle 'https://github.com/jelera/vim-javascript-syntax.git'
    Bundle 'https://github.com/teramako/jscomplete-vim.git'
    "Bundle 'https://github.com/myhere/vim-nodejs-complete.git'
    "Bundle 'https://github.com/guileen/vim-node.git'
" JSON
    Bundle 'https://github.com/leshill/vim-json.git'
" PHP
    Bundle 'https://github.com/vim-scripts/php.vim--Garvin.git'
    Bundle 'https://github.com/2072/PHP-Indenting-for-VIm.git'
" Python/Django
    if has('python')
        Bundle 'https://github.com/davidhalter/jedi-vim.git'
        Bundle 'https://github.com/klen/python-mode.git'
        let g:pymode_rope = 0
        let g:jedi#auto_vim_configuration = 0
    else
        Bundle 'https://github.com/fs111/pydoc.vim.git'
    endif

" Ruby/Rails
    Bundle 'https://github.com/vim-ruby/vim-ruby.git'
    Bundle 'https://github.com/tpope/vim-rails.git'
    Bundle 'https://github.com/tpope/vim-endwise.git'
" Jade
    Bundle 'https://github.com/digitaltoad/vim-jade.git'
" Stylus
    Bundle 'https://github.com/wavded/vim-stylus.git'
" Scala
    Bundle 'https://github.com/derekwyatt/vim-scala.git'
    "Bundle 'https://github.com/gorodinskiy/scala-vim-snippets.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set background=dark
    let g:molokai_original = 1
    set t_Co=256
    let g:solarized_termcolors=256

    try
        if has("gui_running")
            colorscheme badwolf
        else
            colorscheme molokai
        endif
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme molokai
    endtry
    

" use neocomplcache & clang_complete
" add neocomplcache option
    let g:neocomplcache_force_overwrite_completefunc=1

" add clang_complete option
    let g:clang_complete_auto=1
    let g:clang_close_preview=1

"encodings
    set encoding=utf8
    set fileencodings=utf8,cp1251
    set termencoding=utf-8
    set langmenu=en_US.UTF-8
    "autocmd BufReadPost * nested
          "\ if !exists('b:reload_dos') && &ff=='unix' && (0 < search('\r$', 'nc')) |
          "\   let b:reload_dos = 1 |
          "\   %s/
          "\ endif
    noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"tabstop
    set smartindent
    set tabstop=4
    set shiftwidth=4

"show hidden
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Search
    set incsearch   " Moving cursor to text being search while typing 
    set hlsearch    " Highlighting search result 
    set ignorecase  " Ignore character case while searching 
    set smartcase   " Override the 'ignorecase' if the search pattern contains upper case characters
    set gdefault    " auto g flag in commands, such as :%s/a/b/

"Enable mouse in all modes
    set mouse=a
    set mousehide

"Don’t reset cursor to start of line when moving around.
    set nostartofline

"Don’t show the intro message when starting vim
    set shortmess=atI

"Show the filename in the window titlebar
    set title

"Show the (partial) command as it’s being typed
    set showcmd

"hate modelines
    set modelines=0
    set nomodeline
    set nowritebackup

    set ruler
    set cursorline

"backups
    set nobackup       "no backup files
    set nowritebackup  "only in case you don't want a backup file while editing
    set noswapfile     "no swap files
    "set backupdir=$HOME/tmp

"line numbers
    set number

    "set scrolloff=999       " focus mode like in Writer app http://www.iawriter.com/
    set showtabline=1
    "set list                " display unprintable characters
    set wrap                " line breaking (http://vimcasts.org/episodes/soft-wrapping-text/)
    "if version >= 703
    "    set colorcolumn=80 " 80 column 
    "end
    set textwidth=80
    set formatoptions-=o    " dont continue comments when pushing o/O
    set linebreak           " line breaking without breaking word 

" http://www.allaboutvim.ru/2012/03/blog-post.html
    set path=.,,**

" tab symbol and end of line symbol 
    if has('multi_byte')
        if version >= 700
            set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
        else
            set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
        endif
    endif

" Symbol at the begining of line when its broken 
    if has("linebreak")
          let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
    endif

" Spell checking 
    if version >= 700
        set spell spelllang= 
        set nospell " by default 
        menu Spell.off :setlocal spell spelllang= <cr>
        menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
        menu Spell.Russian :setlocal spell spelllang=ru <cr>
        menu Spell.English :setlocal spell spelllang=en <cr>
        menu Spell.-SpellControl- :
        menu Spell.Word\ Suggest<Tab>z= z=
        menu Spell.Previous\ Wrong\ Word<Tab>[s [s
        menu Spell.Next\ Wrong\ Word<Tab>]s ]s
    endif

" Folding 
    " za - open/close current scope.
    " {zR, zM} - {open, close} all scopes.
    " from https://github.com/sjl/dotfiles/blob/master/vim/.vimrc
    function! MyFoldText()
        let line = getline(v:foldstart)

        let nucolwidth = &fdc + &number * &numberwidth
        let windowwidth = winwidth(0) - nucolwidth - 3
        let foldedlinecount = v:foldend - v:foldstart

        " expand tabs into spaces
        let onetab = strpart(' ', 0, &tabstop)
        let line = substitute(line, '\t', onetab, 'g')

        let line = strpart(line, 0, windowwidth - 2 - len(foldedlinecount))
        let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
        return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
    endfunction
    set foldtext=MyFoldText()

    set foldcolumn=0        " line width for folding 
    set foldmethod=indent   " folding with indents
    set foldnestmax=10      " depth
    set nofoldenable
    set foldlevel=1         
    set fillchars="fold: "  " remove the extrafills --------

" don't show pair quote 
    "let loaded_matchparen=1 
    set noshowmatch " don't show pair <> в HTML

"status line
    set laststatus=2

"Powerline
    let g:Powerline_cache_enabled = 0

"set paste
    set nopaste

"Don’t add empty newlines at the end of files
    set binary
    set noeol

"Make vim more useful
    set nocompatible

"Enhance command-line completion
    set wildmenu
    "set wildmode=list:longest,full " Автодополнение на манер zsh
    set wildmenu " Саджест по <tab> в командной строке
                 " When 'wildmenu' is on, command-line completion operates in an enhanced
                 " mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
                 " the possible matches are shown just above the command line, with the
                 " first match highlighted (overwriting the status line, if there is
                 " one).
    set wildignore+=.hg,.git,.svn " Version control
    set wildignore+=*.DS_Store    " OSX bullshit
    set wildignore+=*.pyc         " Python byte code

"Allow cursor keys in insert mode
    set esckeys

"Optimize for fast terminal connections
    set ttyfast

"Add the g flag to search/replace by default
    set gdefault

    syntax on
    set smarttab
    set autoindent
    set expandtab

"disable annoying bell and epileptic flash
    set noerrorbells visualbell t_vb=
    if has('autocmd')
        autocmd GUIEnter * set visualbell t_vb=
    endif

"backspace
    set backspace=indent,eol,start


"""""""""""""""""""""""""""""""""""""""""""""""
" File specific
"""""""""""""""""""""""""""""""""""""""""""""""

"file types that weren't recognized for some reason
    autocmd BufReadPre *.xsl set filetype=xslt
    autocmd BufReadPre *.dtd set filetype=xslt
    au BufRead,BufNewFile *.vm set ft=html syntax=velocity
    au BufRead,BufNewFile *.vt set ft=html syntax=velocity
    autocmd BufRead,BufNewFile *.less set filetype=less.css
    au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

    autocmd BufNewFile *.py 0r $VIMHOME/templates/template.py
    autocmd BufNewFile *.xml 0r $VIMHOME/templates/template.xml
    autocmd BufNewFile *.xsl 0r $VIMHOME/templates/template.xsl
    autocmd BufNewFile *.jade 0r $VIMHOME/templates/template.jade
    autocmd BufNewFile *.html 0r $VIMHOME/templates/template.html

    autocmd BufReadPost *.mheg set syntax=mheg
    autocmd BufReadPost *.mhg set syntax=mheg

    autocmd FileType javascript
                \ :setl omnifunc=jscomplete#CompleteJS

    "let g:node_usejscomplete = 1
    let g:jscomplete_use = ['dom', 'moz', 'xpcom', 'es6th']

    autocmd FileType jade setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

    "if has("autocmd")
      "autocmd! bufwritepost .vimrc source $HOME/.vimrc
    "endif

    "hi ColorColumn ctermbg=black guibg=#212121
    "let g:vimroom_guibackground="#1d1f21"
    "let g:AutoPairsMapCR = 0

    let g:netrw_ftp_cmd="ftp -p"
    set history=1000 " store lots of :cmdline history
    
    "for TOhtml function
    let html_use_css = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""
    "cmap w!! %!sudo tee > /dev/null % " save file with root permissions"
    command! Sudo exec 'w !sudo tee % > /dev/null' | e!
    cabbrev sudo Sudo

nnoremap <Esc>A <up>
nnoremap <Esc>B <down>
nnoremap <Esc>C <right>
nnoremap <Esc>D <left>
inoremap <Esc>A <up>
inoremap <Esc>B <down>
inoremap <Esc>C <right>
inoremap <Esc>D <left>

"symbols in editing mode
    imap <Leader>>> »
    imap <Leader><< «
    imap <Leader>-- —
    imap <Leader>- –
    imap <Leader>' ’

" remap cyrrilic symbols 
    set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" select all
    nnoremap <Leader>a gg0vGG$
    vnoremap <Leader>a gg0vGG$

" < >
    vnoremap << <gv
    vnoremap >> >gv

" { }
    vnoremap {{ {
    vnoremap }} }

" paste and select
    xnoremap p pgvy
    xnoremap P Pgvy

" ,p
    " pastetoggle 
    " set pastetoggle=<Leader>p

" ,nm
    " Toggle type of line numbers
    " http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
    " vim 7.3 required
    let g:relativenumber = 0
    function! ToogleRelativeNumber()
      if g:relativenumber == 0
        let g:relativenumber = 1
        set norelativenumber
        set number
        echo "Show line numbers"
      elseif g:relativenumber == 1
        let g:relativenumber = 2
        set nonumber
        set relativenumber
        echo "Show relative line numbers"
      else
        let g:relativenumber = 0
        set nonumber
        set norelativenumber
        echo "Show no line numbers"
      endif
    endfunction
    map <Leader>nm :call ToogleRelativeNumber()<cr>

" ,r
    " replace in all opened buffers http://vim.wikia.com/wiki/VimTip382
    function! Replace()
        let s:word = input("Replace " . expand('<cword>') . " with:")
        :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
        :unlet! s:word
    endfunction
    map <Leader>r :call Replace()<CR>

" ,y
    nnoremap <Leader>y "+y
    vnoremap <Leader>y "+y

" ,p
    nnoremap <Leader>p "+gp
    vnoremap <Leader>p "+gp

" ,P
    noremap <Leader>P "+gP
    vnoremap <Leader>P "+gP

"moving lines
    noremap <S-down> :m+<CR>==
    noremap <S-up> :m-2<CR>==
    inoremap <S-Down> <Esc>:m+<CR>==gi
    inoremap <S-Up> <Esc>:m-2<CR>==gi
    vnoremap <S-Down> :m'>+<CR>gv=gv
    vnoremap <S-Up> :m-2<CR>gv=gv
    vnoremap <S-Left> d<ESC>hP`[v`]
    vnoremap <S-Right> d<ESC>p`[v`]
    nnoremap <S-Left> x<ESC>hP
    nnoremap <S-Right> x<ESC>p

if has("gui_running")

    noremap <C-S-down> :m+<CR>==
    noremap <C-S-up> :m-2<CR>==
    inoremap <C-S-Down> <Esc>:m+<CR>==gi
    inoremap <C-S-Up> <Esc>:m-2<CR>==gi
    vnoremap <C-S-Down> :m'>+<CR>gv=gv
    vnoremap <C-S-Up> :m-2<CR>gv=gv
    vnoremap <C-S-Left> d<ESC>hP`[v`]
    vnoremap <C-S-Right> d<ESC>p`[v`]
    nnoremap <C-S-Left> x<ESC>hP
    nnoremap <C-S-Right> x<ESC>p

endif

"wrap with brackets and quotes
    vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>`>ll<ESC>
    vnoremap " <ESC>`>a"<ESC>`<i"<ESC>`>ll<ESC>
    vnoremap ( <ESC>`>a)<ESC>`<i(<ESC>`>ll<ESC>
    vnoremap ) <ESC>`>a)<ESC>`<i(<ESC>`>ll<ESC>
    vnoremap [ <ESC>`>a]<ESC>`<i[<ESC>`>ll<ESC>
    vnoremap ] <ESC>`>a]<ESC>`<i[<ESC>`>ll<ESC>
    vnoremap { <ESC>`>a}<ESC>`<i{<ESC>`>ll<ESC>
    vnoremap } <ESC>`>a}<ESC>`<i{<ESC>`>ll<ESC>
    vnoremap < <ESC>`>a><ESC>`<i<<ESC>`>ll<ESC>
    vnoremap > <ESC>`>a><ESC>`<i<<ESC>`>ll<ESC>

"save
    nmap <C-s> :w<CR>
    vmap <C-s> :w<CR>
    imap <C-s> <Esc>:w<CR>

    nmap <Leader>s :w<CR>
    vmap <Leader>s :w<CR>
    imap <Leader>s <Esc>:w<CR>

" Don't skip wrap lines
    noremap j gj
    noremap k gk
    nnoremap <Down> gj
    nnoremap <Up> gk
    vnoremap <Down> gj
    vnoremap <Up> gk
    "inoremap <Down> <Esc>gja
    "inoremap <Up> <Esc>gka

" n и N
    " results of search always in center 
    noremap n :set hlsearch<cr>nzz
    noremap N :set hlsearch<cr>Nzz
    nmap * *zz
    nmap # #zz
    nmap g* g*zz
    nmap g# g#zz
    "autocmd CursorMoved * set nohlsearch
    autocmd cursorhold * set nohlsearch
    noremap / :set hlsearch<cr>/
    noremap ? :set hlsearch<cr>?

" ,s
    nnoremap <leader>s :%s//<left>
    vnoremap <leader>s :s//<left>

" ,w
    noremap <Leader>w <C-w>w

" an empty split relative to current 
    nmap <Leader><left>  :leftabove  vnew<CR>
    nmap <Leader><right> :rightbelow vnew<CR>
    nmap <Leader><up>    :leftabove  new<CR>
    nmap <Leader><down>  :rightbelow new<CR>

" moving between splits 
    noremap <C-Left> <C-W>h
    noremap <C-Down> <C-W>j
    noremap <C-Up> <C-W>k
    noremap <C-Right> <C-W>l

" show buffers
    nmap <C-b> :CtrlPBuffer<cr>

" prev buffer
    nmap <Leader>bp :bp!<cr>
    vmap <Leader>bp <Esc>:bp!<cr>
    imap <Leader>bp <Esc>:bp!<cr>
    
" next buffer
    nmap <Leader>bn :bn!<cr>
    vmap <Leader>bn <Esc>:bn!<cr>
    imap <Leader>bn <Esc>:bn!<cr>

if has("gui_running")

" prev buffer
    nmap <C-Tab> :bp!<cr>
    vmap <C-Tab> <Esc>:bp!<cr>
    imap <C-Tab> <Esc>:bp!<cr>
    
" next buffer
    nmap <C-S-Tab> :bn!<cr>
    vmap <C-S-Tab> <Esc>:bn!<cr>
    imap <C-S-Tab> <Esc>:bn!<cr>

endif

" prev tab 
    nmap <Leader>tp :tabprevious<cr>
    vmap <Leader>tp <Esc>:tabprevious<cr>
    imap <Leader>tp <Esc>:tabprevious<cr>


" next tab 
    nmap <Leader>tn :tabnext<cr>
    vmap <Leader>tn <Esc>:tabnext<cr>
    imap <Leader>tn <Esc>:tabnext<cr>

" ,u Change case to uppercase
    nnoremap <Leader>u gUiw
    inoremap <Leader>u <esc>gUiwea

" <Esc><Esc>
    " Clear the search highlight in Normal mode
    "nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

"template to redefine stuff
":command -nargs=+ E :tabe <args>"
":cabbrev e E

"zen-coding expand abbr
    let g:user_zen_expandabbr_key = '<c-e>' 
    let g:use_zen_complete_tag = 1

"snipmate custom key. Safe way
    nmap <Leader>rr :call ReloadAllSnippets()<CR>
    "let g:snippets_dir="$VIMHOME/bundle/snipmate-snippets/,$VIMHOME/my_snippets/"

"
"
"neosnippet plugin
"
"
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory=$VIMHOME.'/bundle/vim-snippets/snippets'

let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_plugin_completion_length = {
  "\ 'buffer_complete'   : 2,
  "\ 'include_complete'  : 2,
  "\ 'syntax_complete'   : 2,
  "\ 'filename_complete' : 2,
  "\ 'keyword_complete'  : 2,
  "\ 'omni_complete'     : 1
  "\ }
"let g:neocomplcache_min_keyword_length = 3
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_dictionary_filetype_lists = {
  "\ 'default'    : '',
  "\ 'erlang'     : $VIMHOME . '/dict/erlang.dict',
  "\ 'objc'       : $VIMHOME . '/dict/objc.dict',
  "\ 'javascript' : $VIMHOME . '/dict/javascript.dict',
  "\ 'mxml'       : $VIMHOME . '/dict/mxml.dict',
  "\ 'ruby'       : $VIMHOME . '/dict/ruby.dict',
  "\ 'perl'       : $VIMHOME . '/dict/perl.dict',
  "\ 'scheme'     : $VIMHOME . '/dict/gauche.dict',
  "\ 'scala'      : $VIMHOME . '/dict/scala.dict',
  "\ 'int-erl'    : $VIMHOME . '/dict/erlang.dict',
  "\ 'int-irb'    : $VIMHOME . '/dict/ruby.dict',
  "\ 'int-perlsh' : $VIMHOME . '/dict/perl.dict'
  "\ }

" NERDTree
    nmap <Esc> :NERDTreeClose<CR>
    nmap <Bs> :NERDTreeToggle<CR>
    nmap <Leader>n :NERDTree<cr>
    vmap <Leader>n <esc>:NERDTree<cr>
    let NERDTreeShowBookmarks=1
    "let NERDTreeChDirMode=2
    let NERDTreeQuitOnOpen=1
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=0
    let NERDTreeMinimalUI=1 " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
    let NERDTreeDirArrows=1 " Tells the NERD tree to use arrows instead of + ~ chars when displaying directories.
    let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

"In case u wanna open Nerdtree right away and put cursor to editor
"autocmd VimEnter * NERDTree | wincmd l 

"autocmd VimEnter * wincmd p
"mapping Nerdtree
"nmap <F3> :call NERDTreeToggleCurDir()<CR>
"vmap <F3> :call NERDTreeToggleCurDir()<CR> 
"imap <F3> :call NERDTreeToggleCurDir()<CR> 

"nmap <F2> :NERDTree<CR>
"vmap <F2> :NERDTree<CR> 
"imap <F2> :NERDTree<CR> 

"let NERDTreeDirArrows=1
"let NERDTreeMinimalUI=1
"let NERDTreeChDirMode = 1
""let NERDTreeWinSize=20
"let NERDTreeHighlightCursorline=1

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"func! NERDTreeToggleCurDir()
    "if (exists("b:NERDTreeType")) | NERDTreeClose | else | execute "NERDTree ".fnamemodify(".",":p") | endif
"endfunction

"so that we are not asked everytime to save 
"everything
    :cabbrev e NERDTreeClose<CR>:e!
    :cabbrev t tabedit!
    :cabbrev bd :ene!<CR>:bw #<CR> 
    :cabbrev qa qa!
    :cabbrev q q!
    :cabbrev Cd CD

    :cabbrev ц w
    :cabbrev у NERDTreeClose<CR>:e!
    :cabbrev й q!
    :cabbrev й!! q!
    :cabbrev цй wq

    :cabbrev Ц w
    :cabbrev У NERDTreeClose<CR>:e!
    :cabbrev Й q!

    :cabbrev W w
    :cabbrev Wq wq
    :cabbrev E NERDTreeClose<CR>:e!
    :cabbrev Q q!
    :cabbrev q!! q!
    :cabbrev qa!! qa!

"buffers
    nnoremap <silent> <Leader>bd :ene!<CR>:bw #<CR>
    vnoremap <silent> <Leader>bd :ene!<CR>:bw #<CR>
    nnoremap <silent> <Leader>qa :qa<CR>
    vnoremap <silent> <Leader>qa :qa<CR>
    nnoremap <silent> <Leader>q :q<CR>
    vnoremap <silent> <Leader>q :q<CR>

if has("gui_running")
    nmap <silent> <C-q> :q!<CR>
    vmap <silent> <C-q> :q!<CR>
    imap <silent> <C-q> <ESC>:q!<CR>

    nmap <silent> <C-q>a :qa!<CR>
    vmap <silent> <C-q>a :qa!<CR>
    imap <silent> <C-q>a <ESC>:qa!<CR>

    nmap <silent> <C-w> :ene!<CR>:bw #<CR>
    vmap <silent> <C-w> :ene!<CR>:bw #<CR>
    imap <silent> <C-w> <ESC>:ene!<CR>:bw #<CR>
endif

    nmap <Leader>1 :call Layout(1)<CR>
    nmap <Leader>2 :call Layout(2)<CR>
    nmap <Leader>3 :call Layout(3)<CR>
    "nmap <Leader>m :make<CR>

"let g:miniBufExplMapCTabSwitchBufs = 1
    "nmap <Leader><Right> :bnext!<CR>
    "nmap <Leader><Left> :bprev!<CR>
    "vmap <Leader><Right> <ESC>:bnext!<CR>
    "vmap <Leader><Left> <ESC>:bprev!<CR>
    "imap <Leader><Right> <ESC>:bnext!<CR>
    "imap <Leader><Left> <ESC>:bprev!<CR>

    nmap <F5> :TagbarToggle<CR>

"maximize window
if has("gui_running")

    "set background=dark
    " GUI is running or is about to start.
    " Maximize gvim window.
    set lines=40 columns=160
    set linespace=2
    set numberwidth=3

    if has("unix") 
        if has("gui_mac") || has("gui_macvim")
            set guifont=Monaco:h12
            "set clipboard=unnamed
            set macmeta
        else
            let os = substitute(system('uname'), "\n", "", "")
            if os == "Linux"
                set guifont=Droid\ Sans\ Mono\ 10
                "set clipboard=unnamedplus
            endif
        endif
    else
        if has("gui_win32") || has("gui_win32s")
            set guifont=Consolas:h10
            let g:tagbar_ctags_bin='$HOME\vimfiles\bin\ctags.exe'
            "set clipboard=unnamed
            "source $VIMRUNTIME/mswin.vim
        endif
    endif

    "hide menu,toolbar,scrollbar
    set guioptions+=m  "remove menu bar
    set guioptions-=T  "remove toolbar

    set guioptions+=LIRrb
    set guioptions-=LIRrb
    "set guioptions-=b
    set guioptions+=LIRlb
    set guioptions-=LIRlb

    "set guioptions-=r  "remove right-hand scroll bar
    "set guioptions-=l  "remove left-hand scroll bar
    "cursor
    set guicursor=n-v-c:hor15-Cursor-blinkon1000-blinkoff1000
    set guicursor+=i:hor5-Cursor-blinkon1000-blinkoff1000
    "set cursorline

    "if line is bigger than 80 characters it's highlighted 
    "match ErrorMsg '\%>80v.\+'
    "set cc=80
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin to copy matches (search hits which may be multiline).
" Version 2012-05-03 from http://vim.wikia.com/wiki/VimTip478
"
" :CopyMatches      copy matches to clipboard (each match has newline added)
" :CopyMatches x    copy matches to register x
" :CopyMatches X    append matches to register x
" :CopyMatches -    display matches in a scratch buffer (does not copy)
" :CopyMatches pat  (after any of above options) use 'pat' as search pattern
" :CopyMatches!     (with any of above options) insert line numbers
" Same options work with the :CopyLines command (which copies whole lines).

" Jump to first scratch window visible in current tab, or create it.
" This is useful to accumulate results from successive operations.
" Global function that can be called from other scripts.
function! GoScratch()
    let done = 0
    for i in range(1, winnr('$'))
        execute i . 'wincmd w'
        if &buftype == 'nofile'
            let done = 1
            break
        endif
    endfor
    if !done
        new
        setlocal buftype=nofile bufhidden=hide noswapfile
    endif
endfunction

" Append match, with line number as prefix if wanted.
function! s:Matcher(hits, match, linenums, subline)
    if !empty(a:match)
        let prefix = a:linenums ? printf('%3d  ', a:subline) : ''
        call add(a:hits, prefix . a:match)
    endif
    return a:match
endfunction

" Append line numbers for lines in match to given list.
function! s:MatchLineNums(numlist, match)
    let newlinecount = len(substitute(a:match, '\n\@!.', '', 'g'))
    if a:match =~ "\n$"
        let newlinecount -= 1  " do not copy next line after newline
    endif
    call extend(a:numlist, range(line('.'), line('.') + newlinecount))
    return a:match
endfunction

" Return list of matches for given pattern in given range.
" If 'wholelines' is 1, whole lines containing a match are returned.
" This works with multiline matches.
" Work on a copy of buffer so unforeseen problems don't change it.
" Global function that can be called from other scripts.
function! GetMatches(line1, line2, pattern, wholelines, linenums)
    let savelz = &lazyredraw
    set lazyredraw
    let lines = getline(1, line('$'))
    new
    setlocal buftype=nofile bufhidden=delete noswapfile
    silent put =lines
    1d
    let hits = []
    let sub = a:line1 . ',' . a:line2 . 's/' . escape(a:pattern, '/')
    if a:wholelines
        let numlist = []  " numbers of lines containing a match
        let rep = '/\=s:MatchLineNums(numlist, submatch(0))/e'
    else
        let rep = '/\=s:Matcher(hits, submatch(0), a:linenums, line("."))/e'
    endif
    silent execute sub . rep . (&gdefault ? '' : 'g')
    close
    if a:wholelines
        let last = 0  " number of last copied line, to skip duplicates
        for lnum in numlist
            if lnum > last
                let last = lnum
                let prefix = a:linenums ? printf('%3d  ', lnum) : ''
                call add(hits, prefix . getline(lnum))
            endif
        endfor
    endif
    let &lazyredraw = savelz
    return hits
endfunction

" Copy search matches to a register or a scratch buffer.
" If 'wholelines' is 1, whole lines containing a match are returned.
" Works with multiline matches. Works with a range (default is whole file).
" Search pattern is given in argument, or is the last-used search pattern.
function! s:CopyMatches(bang, line1, line2, args, wholelines)
    let l = matchlist(a:args, '^\%(\([a-zA-Z"*+-]\)\%($\|\s\+\)\)\?\(.*\)')
    let reg = empty(l[1]) ? '+' : l[1]
    let pattern = empty(l[2]) ? @/ : l[2]
    let hits = GetMatches(a:line1, a:line2, pattern, a:wholelines, a:bang)
    let msg = 'No non-empty matches'
    if !empty(hits)
        if reg == '-'
            call GoScratch()
            normal! G0m'
            silent put =hits
            " Jump to first line of hits and scroll to middle.
            ''+1normal! zz
        else
            execute 'let @' . reg . ' = join(hits, "\n") . "\n"'
        endif
        let msg = 'Number of matches: ' . len(hits)
    endif
    redraw  " so message is seen
    echo msg
endfunction
command! -bang -nargs=? -range=% CopyMatches call s:CopyMatches(<bang>0, <line1>, <line2>, <q-args>, 0)
command! -bang -nargs=? -range=% CopyLines call s:CopyMatches(<bang>0, <line1>, <line2>, <q-args>, 1)

function! BufferDelete()
    "if &modified
    "    echohl ErrorMsg
        "echomsg "No write since last change. Not closing buffer."
    "    echohl NONE
    "else
        let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

        if s:total_nr_buffers == 1
            bdelete!
            "echo "Buffer deleted. Created new buffer."
        else
            bprevious!
            bdelete! #
            "echo "Buffer deleted."
        endif
    "endif
endfunction

function! BufferIsEmpty()
    if line('$') == 1 && getline(1) == '' 
        return 1
    else
        return 0
    endif
endfunction

let s:cur_split = "2h"

function! Layout(num)
    "making only one visible

    if !exists("b:NERDTreeType") || ( exists("b:NERDTreeType") && b:NERDTreeType != "primary" )
        on!

        let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

        "b:NERDTreeType != "primary"
        if a:num==2
            if s:cur_split=="2v"
                sp
                wincmd w
                let s:cur_split="2h"
            elseif s:cur_split=="2h"
                "vert belowright sb
                vsplit
                wincmd w
                let s:cur_split="2v"
            endif

            bnext
            wincmd t
        elseif a:num==3
            "vert belowright sb
            vsplit
            wincmd w
            bnext
            bnext
            sp
            bprev
            wincmd t
            let s:cur_split="2h"
        else
            let s:cur_split="2h"
        endif

    endif

endfunction

" taken from https://github.com/carlhuda/janus
" Utility functions to create file commands
function! s:CommandCabbr(abbreviation, expansion)
    execute 'cabbrev ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
endfunction

function! s:FileCommand(name, ...)
    if exists("a:1")
        let funcname = a:1
    else
        let funcname = a:name
    endif

    execute 'command! -nargs=* -complete=file ' . a:name . ' :call ' . funcname . '(<f-args>)'
endfunction

function! s:DefineCommand(name, destination)
    call s:FileCommand(a:destination)
    call s:CommandCabbr(a:name, a:destination)
endfunction

" Public NERDTree-aware versions of builtin functions
function! CD(...)
    if exists("a:1")
        execute "cd ".fnameescape(a:1)
    else
        execute "cd"
    endif
    NERDTree
endfunction

" Define the NERDTree-aware aliases
call s:DefineCommand("cd", "CD")

" Auto change the directory to the current file I'm working on
    "autocmd VimResized * :wincmd h<CR>:wincmd k<CR>:call Layout(0)<CR> 
    "autocmd cursorhold * if exists("b:NERDTreeType") | NERDTreeClose | endif
    "autocmd BufEnter * lcd %:p:h
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    "in case if you don't open a file
    cd $HOME
    lcd %:p:h

"""""""""""""""""""""""""""""""
" ctags definitions
"""""""""""""""""""""""""""""""

"coffeescript
let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

" markdown
let g:tagbar_type_markdown = {
	\ 'ctagstype' : 'markdown',
	\ 'kinds' : [
		\ 'h:Heading_L1',
		\ 'i:Heading_L2',
		\ 'k:Heading_L3'
	\ ]
\ }

" scala
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }
set fillchars=""
