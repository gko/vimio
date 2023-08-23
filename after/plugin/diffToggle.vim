function! DiffToggle()
    if &diff
        windo diffoff
    else
        windo diffthis
    endif
endfunction

if !exists(":DiffToggle")
    command DiffToggle :call DiffToggle()
endif
