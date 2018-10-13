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

" Define the NERDTree-aware aliases
call s:DefineCommand("cd", "CD")
call s:DefineCommand("e", "E")
