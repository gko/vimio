"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"cmap w!! %!sudo tee > /dev/null % " save file with root permissions"
command! Sudo exec 'w !sudo tee % > /dev/null' | e!
cabbrev sudo Sudo

nnoremap <Esc>A <up>
nnoremap <Esc>B <down>
nnoremap <Esc>C <right>
nnoremap <Esc>D <left>
inoremap <Esc>A <up>
inoremap <Esc>B <down>
inoremap <Esc>C <right>
inoremap <Esc>D <left>

"symbols in editing mode
imap <Leader>>> »
imap <Leader><< «
imap <Leader>-- —
imap <Leader>- –
imap <Leader>' ’

" remap cyrrilic symbols 
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" select all
nnoremap <Leader>a gg0vGG$
vnoremap <Leader>a gg0vGG$

" paste and select
xnoremap p pgvy
xnoremap P Pgvy

" ,p
" pastetoggle 
" set pastetoggle=<Leader>p

" ,nm
" Toggle type of line numbers
" http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
" vim 7.3 required
let g:relativenumber = 0
function! ToogleRelativeNumber()
    if g:relativenumber == 0
        let g:relativenumber = 1
        set norelativenumber
        set number
        echo "Show line numbers"
    elseif g:relativenumber == 1
        let g:relativenumber = 2
        set nonumber
        set relativenumber
        echo "Show relative line numbers"
    else
        let g:relativenumber = 0
        set nonumber
        set norelativenumber
        echo "Show no line numbers"
    endif
endfunction
map <Leader>nm :call ToogleRelativeNumber()<cr>

" ,r
" replace in all opened buffers http://vim.wikia.com/wiki/VimTip382
function! Replace()
    let s:word = input("Replace " . expand('<cword>') . " with:")
    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
    :unlet! s:word
endfunction
map <Leader>r :call Replace()<CR>

" ,y
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y

" ,p
nnoremap <Leader>p "+gp
vnoremap <Leader>p "+gp

" ,P
noremap <Leader>P "+gP
vnoremap <Leader>P "+gP

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

endif

"wrap with brackets and quotes
vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>`>ll<ESC>
vnoremap " <ESC>`>a"<ESC>`<i"<ESC>`>ll<ESC>
vnoremap ( <ESC>`>a)<ESC>`<i(<ESC>`>ll<ESC>
vnoremap ) <ESC>`>a)<ESC>`<i(<ESC>`>ll<ESC>
vnoremap [ <ESC>`>a]<ESC>`<i[<ESC>`>ll<ESC>
vnoremap ] <ESC>`>a]<ESC>`<i[<ESC>`>ll<ESC>

"save
nmap <C-s> :w<CR>
vmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

nmap <Leader>s :w<CR>
vmap <Leader>s :w<CR>
imap <Leader>s <Esc>:w<CR>

" Don't skip wrap lines
noremap j gj
noremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
"inoremap <Down> <Esc>gja
"inoremap <Up> <Esc>gka

" n и N
" results of search always in center 
noremap n :set hlsearch<cr>nzz
noremap N :set hlsearch<cr>Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
"autocmd CursorMoved * set nohlsearch
autocmd cursorhold * set nohlsearch
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?

" ,s
nnoremap <leader>s :%s//<left>
vnoremap <leader>s :s//<left>

" ,w
noremap <Leader>w <C-w>w

" an empty split relative to current 
nmap <Leader><left>  :leftabove  vnew<CR>
nmap <Leader><right> :rightbelow vnew<CR>
nmap <Leader><up>    :leftabove  new<CR>
nmap <Leader><down>  :rightbelow new<CR>

" moving between splits 
noremap <C-Left> <C-W>h
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
noremap <C-Right> <C-W>l

" show buffers
nmap <C-b> :CtrlPBuffer<cr>

" prev buffer
nmap <Leader>bp :bp!<cr>
vmap <Leader>bp <Esc>:bp!<cr>
imap <Leader>bp <Esc>:bp!<cr>

" next buffer
nmap <Leader>bn :bn!<cr>
vmap <Leader>bn <Esc>:bn!<cr>
imap <Leader>bn <Esc>:bn!<cr>

if has("gui_running")

" prev buffer
    nmap <C-Tab> :bp!<cr>
    vmap <C-Tab> <Esc>:bp!<cr>
    imap <C-Tab> <Esc>:bp!<cr>
    
" next buffer
    nmap <C-S-Tab> :bn!<cr>
    vmap <C-S-Tab> <Esc>:bn!<cr>
    imap <C-S-Tab> <Esc>:bn!<cr>

endif

" prev tab 
nmap <Leader>tp :tabprevious<cr>
vmap <Leader>tp <Esc>:tabprevious<cr>
imap <Leader>tp <Esc>:tabprevious<cr>


" next tab 
nmap <Leader>tn :tabnext<cr>
vmap <Leader>tn <Esc>:tabnext<cr>
imap <Leader>tn <Esc>:tabnext<cr>

" ,u Change case to uppercase
nnoremap <Leader>u gUiw
inoremap <Leader>u <esc>gUiwea

" <Esc><Esc>
" Clear the search highlight in Normal mode
"nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

"template to redefine stuff
":command -nargs=+ E :tabe <args>"
":cabbrev e E

"zen-coding expand abbr
let g:user_emmet_expandabbr_key = '<c-e>' 
let g:use_emmet_complete_tag = 1

"snipmate custom key. Safe way
nmap <Leader>rr :call ReloadAllSnippets()<CR>
"let g:snippets_dir="$VIMHOME/bundle/snipmate-snippets/,$VIMHOME/my_snippets/"

"
"
"neosnippet plugin
"
"
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory=$VIMHOME.'/bundle/vim-snippets/snippets'

let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_plugin_completion_length = {
  "\ 'buffer_complete'   : 2,
  "\ 'include_complete'  : 2,
  "\ 'syntax_complete'   : 2,
  "\ 'filename_complete' : 2,
  "\ 'keyword_complete'  : 2,
  "\ 'omni_complete'     : 1
  "\ }
"let g:neocomplcache_min_keyword_length = 3
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_dictionary_filetype_lists = {
  "\ 'default'    : '',
  "\ 'erlang'     : $VIMHOME . '/dict/erlang.dict',
  "\ 'objc'       : $VIMHOME . '/dict/objc.dict',
  "\ 'javascript' : $VIMHOME . '/dict/javascript.dict',
  "\ 'mxml'       : $VIMHOME . '/dict/mxml.dict',
  "\ 'ruby'       : $VIMHOME . '/dict/ruby.dict',
  "\ 'perl'       : $VIMHOME . '/dict/perl.dict',
  "\ 'scheme'     : $VIMHOME . '/dict/gauche.dict',
  "\ 'scala'      : $VIMHOME . '/dict/scala.dict',
  "\ 'int-erl'    : $VIMHOME . '/dict/erlang.dict',
  "\ 'int-irb'    : $VIMHOME . '/dict/ruby.dict',
  "\ 'int-perlsh' : $VIMHOME . '/dict/perl.dict'
  "\ }

" NERDTree
nmap <Esc> :NERDTreeClose<CR>
nmap <Bs> :NERDTreeToggle<CR>
nmap <Leader>n :NERDTree<cr>
vmap <Leader>n <esc>:NERDTree<cr>
let NERDTreeShowBookmarks=1
"let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=0
let NERDTreeMinimalUI=1 " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
let NERDTreeDirArrows=1 " Tells the NERD tree to use arrows instead of + ~ chars when displaying directories.
let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

"In case u wanna open Nerdtree right away and put cursor to editor
"autocmd VimEnter * NERDTree | wincmd l 

"autocmd VimEnter * wincmd p
"mapping Nerdtree
"nmap <F3> :call NERDTreeToggleCurDir()<CR>
"vmap <F3> :call NERDTreeToggleCurDir()<CR> 
"imap <F3> :call NERDTreeToggleCurDir()<CR> 

"nmap <F2> :NERDTree<CR>
"vmap <F2> :NERDTree<CR> 
"imap <F2> :NERDTree<CR> 

"let NERDTreeDirArrows=1
"let NERDTreeMinimalUI=1
"let NERDTreeChDirMode = 1
""let NERDTreeWinSize=20
"let NERDTreeHighlightCursorline=1

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"func! NERDTreeToggleCurDir()
    "if (exists("b:NERDTreeType")) | NERDTreeClose | else | execute "NERDTree ".fnamemodify(".",":p") | endif
"endfunction

"so that we are not asked everytime to save 
"everything
:cabbrev e NERDTreeClose<CR>:e!
:cabbrev t tabedit!
:cabbrev bd :ene!<CR>:bw #<CR> 
:cabbrev qa qa!
:cabbrev q q!
:cabbrev Cd CD

:cabbrev ц w
:cabbrev у NERDTreeClose<CR>:e!
:cabbrev й q!
:cabbrev й!! q!
:cabbrev цй wq

:cabbrev Ц w
:cabbrev У NERDTreeClose<CR>:e!
:cabbrev Й q!

:cabbrev W w
:cabbrev Wq wq
:cabbrev WQ wq
:cabbrev wQ wq
:cabbrev E NERDTreeClose<CR>:e!
:cabbrev Q q!
:cabbrev q!! q!
:cabbrev qa!! qa!
:cabbrev qA qa!
:cabbrev Qa qa!
:cabbrev QA qa!

"buffers
nnoremap <silent> <Leader>bd :ene!<CR>:bw #<CR>
vnoremap <silent> <Leader>bd :ene!<CR>:bw #<CR>
nnoremap <silent> <Leader>qa :qa<CR>
vnoremap <silent> <Leader>qa :qa<CR>
nnoremap <silent> <Leader>q :q<CR>
vnoremap <silent> <Leader>q :q<CR>

if has("gui_running")
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

nmap <Leader>1 :call Layout(1)<CR>
nmap <Leader>2 :call Layout(2)<CR>
nmap <Leader>3 :call Layout(3)<CR>
"nmap <Leader>m :make<CR>

"let g:miniBufExplMapCTabSwitchBufs = 1
"nmap <Leader><Right> :bnext!<CR>
"nmap <Leader><Left> :bprev!<CR>
"vmap <Leader><Right> <ESC>:bnext!<CR>
"vmap <Leader><Left> <ESC>:bprev!<CR>
"imap <Leader><Right> <ESC>:bnext!<CR>
"imap <Leader><Left> <ESC>:bprev!<CR>

nmap <F5> :TagbarToggle<CR>
