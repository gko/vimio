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
set wildignore+=*/node_modules/*,*/vendor/*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
