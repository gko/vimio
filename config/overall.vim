"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
set background=light
let g:molokai_original = 1
set t_Co=256
let g:solarized_termcolors=256

" set colorscheme
try
  colorscheme snow
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry

" add clang_complete option
let g:clang_complete_auto=1
let g:clang_close_preview=1

"encodings
set encoding=utf8
set fileencodings=utf8,cp1251
set termencoding=utf-8
set langmenu=en_US.UTF-8

noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Don’t add empty newlines at the end of files
"this has to go before expandtab
set binary
set noeol

"set smartindent
set cindent
" set smartindent

set shiftwidth=2
" Spaces
"set expandtab
"set tabstop=2
"set softtabstop=2

" Tab
set tabstop=2
set noexpandtab
"set smarttab
set shiftwidth=2
set softtabstop=2

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

"Show the filename in the window titlebar
set title

"Show the (partial) command as it’s being typed
set showcmd

"hate modelines
set modelines=0
set nomodeline
set nowritebackup

set ruler
" this lowers the perf a lot
" set cursorline
set lazyredraw

"backups
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
"set backupdir=$HOME/tmp

"line numbers
set number

set showtabline=1
set wrap                " line breaking (http://vimcasts.org/episodes/soft-wrapping-text/)

"if version >= 703
"  set colorcolumn=80 " 80 column
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

"Airline
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif

set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '░'
"" Disable powerline arrows and setting blank seperators creates a rectangular box
"let g:airline_left_sep = '█▓░'
"let g:airline_right_sep = '░▓█'

"set paste
set nopaste

"Make vim more useful
set nocompatible

"Enhance command-line completion
set wildmenu
"set wildmode=list:longest,full " zsh-like autocomplete
set wildmenu " Suggest on <tab> in command line
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

"disable annoying bell and epileptic flash
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"backspace
set backspace=indent,eol,start

"Don’t show the intro message when starting vim
"set shortmess=I

" search using ack if available
if executable('ack')
  set grepprg=ack\ -s\ -H\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

command! -bang -nargs=* -complete=file -bar Grep silent! grep! <args>
set wildignore+=*/node_modules/*,*/vendor/*

autocmd QuickFixCmdPost *grep* cwindow

"close nerdtree if I open file
autocmd bufnew * :ccl
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"in case if you don't open a file
cd $HOME
lcd %:p:h

if has("gui_running")
  " Maximize gvim window.
  set lines=40 columns=160
  set linespace=2
  set numberwidth=3

  if has("unix")
    if has("gui_mac") || has("gui_macvim")
      set guifont=Monaco:h12
      set macmeta
    else
      let os = substitute(system('uname'), "\n", "", "")
      if os == "Linux"
        set guifont=Anonymous\ Pro\ 12
        "set clipboard=unnamedplus
      endif
    endif
  else
    if has("gui_win32") || has("gui_win32s")
      set guifont=Consolas:h11
    endif
  endif

  "hide menu,toolbar,scrollbar
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar

  set guioptions+=LIRrb
  set guioptions-=LIRrb
  set guioptions+=LIRlb
  set guioptions-=LIRlb

  "cursor
  set guicursor=n-v-c:hor15-Cursor-blinkon1000-blinkoff1000
  set guicursor+=i:ver5-Cursor-blinkon1000-blinkoff1000
  "set cursorline
endif

set history=1000 " store lots of :cmdline history
