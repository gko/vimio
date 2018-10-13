" close quickfix and Nerdtree before opening
" file
function! E(...)
    if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
        q
    endif

    if exists("a:1")
        execute "e! ".fnameescape(a:1)
    else
        execute "e!"
    endif

    :ccl
endfunction

:cabbrev E! E
