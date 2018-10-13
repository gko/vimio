if has("gui_running")
  noremap <C-S-down> :m+<CR>==
  noremap <C-S-up> :m-2<CR>==
  inoremap <C-S-Down> <Esc>:m+<CR>==gi
  inoremap <C-S-Up> <Esc>:m-2<CR>==gi
  vnoremap <C-S-Down> :m'>+<CR>gv=gv
  vnoremap <C-S-Up> :m-2<CR>gv=gv
  vnoremap <C-S-Left> d<ESC>hP`[v`]
  vnoremap <C-S-Right> d<ESC>p`[v`]
  nnoremap <C-S-Left> x<ESC>hP
  nnoremap <C-S-Right> x<ESC>p

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
