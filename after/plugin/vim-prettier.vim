" augroup check-prettier-version
    " autocmd!

    " autocmd FileType javascript, html, typescript, css, less, scss, json, graphql, markdown, vue, yaml
        " \ if exists('g:loaded_prettier') && prettier#PrettierCli('--version') < '2.0' |
        " \   let g:prettier#config#arrow_parens = 'avoid' |
        " \ endif
" augroup end

" prefer prettier config to prettier plugin defaults
" https://github.com/prettier/vim-prettier/issues/266#issuecomment-953417529
let g:prettier#config#config_precedence = 'prefer-file'
