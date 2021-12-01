if exists('g:loaded_fzf_vim')
  finish
endif

lua << EOF
require('telescope').setup {
    pickers = {
        find_files = {
            -- hidden = true
            no_ignore = false
        }
    }
}
EOF

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent> <C-p> <cmd>Telescope find_files<cr>
" show buffers
nnoremap <silent> <C-b> <cmd>Telescope buffers<cr>
