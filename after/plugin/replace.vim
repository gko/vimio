" replace in all opened buffers http://vim.wikia.com/wiki/VimTip382
function! Replace()
  let s:word = input("Replace " . expand('<cword>') . " with:")
  :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
  :unlet! s:word
endfunction
map <Leader>r :call Replace()<CR>
