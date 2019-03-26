function! BufferDelete()
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
