"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
set background=light
let g:molokai_original = 1
set t_Co=256
let g:solarized_termcolors=256

try
    "if has("gui_running")
        colorscheme badwolf
        let g:airline_theme="badwolf"
    "else
        "colorscheme molokai
        "let g:airline_theme="molokai"
    "endif
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme molokai
    let g:airline_theme="molokai"
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
"let g:Powerline_cache_enabled = 0
"let g:Powerline_symbols = 'compatible'
" airline
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif

let g:airline_left_sep=''
let g:airline_right_sep=''
"let g:airline_theme="powerlineish"
" let g:airline_section_warning = airline#section#create([ "syntastic" ])
let g:airline_powerline_fonts = 0
"let g:airline#extensions#branch#empty_message  =  "No SCM"
"let g:airline#extensions#whitespace#enabled    =  0
"let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#enabled       =  1
"let g:airline#extensions#tabline#tab_nr_type   =  1 " tab number
"let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
"let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter

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

" Auto change the directory to the current file I'm working on
"autocmd VimResized * :wincmd h<CR>:wincmd k<CR>:call Layout(0)<CR> 
"autocmd cursorhold * if exists("b:NERDTreeType") | NERDTreeClose | endif
"autocmd BufEnter * lcd %:p:h
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"in case if you don't open a file
cd $HOME
lcd %:p:h

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
