function! BufferIsEmpty()
  if line('$') == 1 && getline(1) == ''
    return 1
  else
    return 0
  endif
endfunction
