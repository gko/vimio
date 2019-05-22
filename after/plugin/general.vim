filetype plugin indent on     " required!

noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" timeout after leader key
" see https://stackoverflow.com/a/26657284/676756
set timeout
set ttimeout
set timeoutlen=300
set ttimeoutlen=50

"Don’t add empty newlines at the end of files
"this has to go before expandtab
set binary
set noeol

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
set cursorline
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
" disable colorcolumn
set cc=

set textwidth=80
set formatoptions-=o    " dont continue comments when pushing o/O
set linebreak           " line breaking without breaking word

" http://www.allaboutvim.ru/2012/03/blog-post.html
set path=.,,**

" don't show pair quote
"let loaded_matchparen=1
set noshowmatch " don't show pair <> в HTML

"status line
set laststatus=2

"set paste
set nopaste

"Make vim more useful
set nocompatible

if !has("nvim")
    "Allow cursor keys in insert mode
    set esckeys
end

"Optimize for fast terminal connections
set ttyfast

"Add the g flag to search/replace by default
set gdefault

syntax on

"backspace
set backspace=indent,eol,start

"Don’t show the intro message when starting vim
"set shortmess=I

"in case if you don't open a file
cd $HOME
lcd %:p:h

set history=1000 " store lots of :cmdline history
set fillchars=""
