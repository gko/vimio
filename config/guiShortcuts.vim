if has("gui_running")
  " prev buffer
  nmap <C-Tab> :bp!<cr>
  vmap <C-Tab> <Esc>:bp!<cr>
  imap <C-Tab> <Esc>:bp!<cr>

  " next buffer
  nmap <C-S-Tab> :bn!<cr>
  vmap <C-S-Tab> <Esc>:bn!<cr>
  imap <C-S-Tab> <Esc>:bn!<cr>

  nmap <silent> <C-q> :q!<CR>
  vmap <silent> <C-q> :q!<CR>
  imap <silent> <C-q> <ESC>:q!<CR>

  nmap <silent> <C-q>a :qa!<CR>
  vmap <silent> <C-q>a :qa!<CR>
  imap <silent> <C-q>a <ESC>:qa!<CR>

  nmap <silent> <C-w> :ene!<CR>:bw #<CR>
  vmap <silent> <C-w> :ene!<CR>:bw #<CR>
  imap <silent> <C-w> <ESC>:ene!<CR>:bw #<CR>
endif
