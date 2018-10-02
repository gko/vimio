if has("win32") || has("win32s") || has('win64')
    " delete ^M symbol when opening file
    autocmd BufRead * silent! :%s/\r\+$//
    autocmd BufRead * silent! :0
    language messages en
endif
