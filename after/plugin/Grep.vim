command! -bang -nargs=* -complete=file -bar Grep silent! grep! <args>

" open grep results in quick fix
autocmd QuickFixCmdPost *grep* cwindow
