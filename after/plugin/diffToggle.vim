" this enables / disables diffmode
" for all open splits on the screen
" so that you don't have to go through all
" of them individually
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
