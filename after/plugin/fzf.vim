nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
nnoremap <C-p> :Files<CR>
" show buffers
nnoremap <C-b> :Buffers<CR>

if has('nvim') && exists("*nvim_open_win")
    let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
    let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
    let g:fzf_layout = { 'window': 'call FloatingFZF()' }

    function! FloatingFZF()
        let buf = nvim_create_buf(v:false, v:true)
        call setbufvar(buf, '&signcolumn', 'no')

        let height = float2nr(10)
        let width = float2nr(80)
        let horizontal = float2nr((&columns - width) / 2)
        let vertical = 1

        let opts = {
            \ 'relative': 'editor',
            \ 'row': vertical,
            \ 'col': horizontal,
            \ 'width': width,
            \ 'height': height,
            \ 'style': 'minimal'
            \ }

        call nvim_open_win(buf, v:true, opts)
    endfunction
endif