if !executable('ranger')
    finish
endif

map <leader>f :Ranger<CR>
" temporary measure
nmap <Leader>n :Ranger<CR>
nmap <Leader>m :Ranger<CR>
