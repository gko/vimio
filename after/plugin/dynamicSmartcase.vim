" https://vi.stackexchange.com/a/15876
if !exists('##CmdlineEnter')
    finish
endif

" assumes set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END
