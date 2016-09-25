if has("unix")
    let os = substitute(system('uname'), "\n", "", "")
    let g:clang_use_library=1

    if os == "Darwin"
        let g:tagbar_ctags_bin='$HOME/.vim/bin/ctags'
    elseif os == "Linux"
        let g:tagbar_ctags_bin='/usr/bin/ctags'
    endif
elseif has("win32") || has("win32s") || has('win64')
    " delete ^M symbol when opening file
    autocmd BufRead * silent! :%s/\r\+$//
    autocmd BufRead * silent! :0

    language messages en
    let g:tagbar_ctags_bin='$HOME/vimfiles/bin/ctags.exe'
    "set clipboard=unnamed
endif
