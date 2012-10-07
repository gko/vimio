#Vim Settings

##Installation

On unix:
```
cd&&
rm -rf $HOME/.vim&&
rm -rf $HOME/.vimrc&&
rm -rf vim-settings&&
git clone --depth 1 --recursive https://github.com/gorodinskiy/vim-settings.git&&
mv vim-settings/_vimrc $HOME/.vimrc&&
mv vim-settings $HOME/.vim&&
cd .vim&&
chmod +x bin/ctags&&
cd&&
vim +BundleInstall +qall
```

##Features

Some of implemented features

 * `Shift`+`Up`/`Down` moves line/selection above/below current previous/next line
 * `Shift`+`Left`/`Right` moves character/selection to left/right
 * `Leader`+`1`/`2`/`3` opens emacs like 1/2(toggle vertical/horizontal)/3 split layout
 * `Backspace` toggles Nerd Tree
 * `Leader`+t opens up global tasks file (markdown format, task snippet for new task)
 * `F5` toggles Tagbar(compiled tagbar for mac and windows in .vim/bin/ folder)
 * when in select mode `'`, `"`, `(` wraps selection accordingly + snippets(i.e. `'`+`TAB`)
 * `Ctrl`+`s` saves file, `Ctrl`+`a` selects all
 * `Leader`+`bd` closes current buffer, `Leader`+`qa` quits vim
 * `Ctrl` + `Left/Right/Bottom/Top` moves around splits
 * `Ctrl` + `Shift` + `Left/Right` next/previous buffer
 * `Ctrl` + `b` currently opened buffers

##List of plugins

 * clang_complete (works with mac(compiled clang 3.2 is in .vim/lib) and linux) 
 * cobalt color scheme
 * coffeescript		
 * git	
 * html5		
 * ir_black 
 * jade
 * jellybeans color scheme
 * jquery
 * jshint
 * molokai color scheme
 * neocomplcache	
 * neocomplcache-clang_complete
 * neocomplcache-snippets-complete
 * nerdcommenter
 * nerdtree
 * neverland-vim-theme color scheme
 * snipmate-snippets	
 * solarized color scheme
 * sunburst color scheme
 * supertab 
 * tagbar
 * tlib-vim
 * twilight color scheme
 * vim-addon-mw-utils
 * vim-css-color
 * vim-less
 * vim-powerline
 * vim-rails
 * vim-railscasts color scheme
 * vim-ruby
 * vim-snipmate
 * vim-tomorrow-theme
 * vim-velocity
 * vimroom
 * vividchalk
 * wombat color scheme
 * zencoding-vim

