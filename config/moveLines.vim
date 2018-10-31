"moving lines
noremap <S-down> :m+<CR>==
noremap <S-up> :m-2<CR>==
inoremap <S-Down> <Esc>:m+<CR>==gi
inoremap <S-Up> <Esc>:m-2<CR>==gi
vnoremap <S-Down> :m'>+<CR>gv=gv
vnoremap <S-Up> :m-2<CR>gv=gv
vnoremap <S-Left> d<ESC>hP`[v`]
vnoremap <S-Right> d<ESC>p`[v`]
nnoremap <S-Left> x<ESC>hP
nnoremap <S-Right> x<ESC>p
