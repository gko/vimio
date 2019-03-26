" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=0
let NERDTreeMinimalUI=1 " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
let NERDTreeDirArrows=1 " Tells the NERD tree to use arrows instead of + ~ chars when displaying directories.
let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

"close nerdtree if I open file
autocmd bufnew * :ccl
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
