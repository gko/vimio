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
