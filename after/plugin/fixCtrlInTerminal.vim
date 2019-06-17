if has("unix") && !has("nvim")
    " To be able to use ctrl in vim https://vi.stackexchange.com/a/2425
    " Allow us to use Ctrl-s and Ctrl-q as keybinds
    silent !stty -ixon

    " Restore default behaviour when leaving Vim.
    autocmd VimLeave * silent !stty ixon
endif
