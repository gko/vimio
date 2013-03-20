#Vim Settings

##Installation

On unix and windows(with bash which can be installed with [git](https://code.google.com/p/msysgit/downloads/list?q=full+installer+official+git)):

    curl -L https://raw.github.com/gorodinskiy/vimio/master/install.sh|bash

##Shortcuts

Some of shortcuts(`Leader` key is comma):

###Terminal mode

 * `Shift`+`Up`/`Down` moves line/selection above/below current previous/next line
 * `Shift`+`Left`/`Right` moves character/selection to left/right
 * `Leader`+`1`/`2`/`3` opens emacs like one, two(toggle vertical/horizontal), three split layout
 * `Backspace` toggles Nerd Tree
 * `F5` toggles Tagbar(compiled tagbar for mac and windows in .vim/bin/ folder)
 * when in select mode `'`, `"`, `(` wraps selection accordingly + snippets(i.e. `'`+`TAB`)
 * `Ctrl`+`s` saves file, `Ctrl`+`a` selects all
 * `Leader`+`bd` closes current buffer,`Leader`+`q` closes split, `Leader`+`qa` quits vim
 * `Ctrl` + `Left/Right/Bottom/Top` moves around splits
 * `Ctrl` + `Shift` + `Left/Right` next/previous buffer
 * `Ctrl` + `e` [zen coding](https://github.com/mattn/zencoding-vim) expand abbreviation
 * `Leader` + `s` in both select and normal mode search and replace

###GUI mode specific
 * `Ctrl``Shift`+`Up`/`Down` moves line/selection above/below current previous/next line
 * `Ctrl``Shift`+`Left`/`Right` moves character/selection to left/right
 * `Leader`+`1`/`2`/`3` opens emacs like 1/2(toggle vertical/horizontal)/3 split layout
 * `Backspace` toggles Nerd Tree
 * `F5` toggles Tagbar(compiled tagbar for mac and windows in .vim/bin/ folder)
 * when in select mode `'`, `"`, `(` wraps selection accordingly + snippets(i.e. `'`+`TAB`)
 * `Ctrl`+`s` saves file, `Leader`+`a` selects all
 * `Ctrl` + `b` currently opened buffers
 * `Ctrl` + `p` go to any file in folder
 * `Ctrl`+`w` closes current buffer, `Ctrl`+`q` closes split, `Ctrl`+`qa` quits vim
 * `Ctrl` + `Left/Right/Bottom/Top` moves around splits
 * `Ctrl` + `Tab` next buffer
 * `Ctrl` + `Shift` + `Tab` previous buffer
 * `Ctrl` + `e` [zen coding](https://github.com/mattn/zencoding-vim) expand abbreviation
 * `Leader` + `s` in both select and normal mode search and replace

##List of plugins

* General
 * [vim-easymotion.git](https://github.com/Lokaltog/vim-easymotion.git)
 * [TaskList.vim.git](https://github.com/vim-scripts/TaskList.vim.git)
 * [nerdtree.git](https://github.com/scrooloose/nerdtree.git)
 * [zencoding-vim.git](https://github.com/mattn/zencoding-vim.git)
 * [vim-git.git](https://github.com/tpope/vim-git.git)
 * [vim-ruby.git](https://github.com/vim-ruby/vim-ruby.git)
 * [VimCobaltColourScheme.git](https://github.com/dterei/VimCobaltColourScheme.git)
 * [vim-vividchalk.git](https://github.com/tpope/vim-vividchalk.git)
 * [Wombat.git](https://github.com/vim-scripts/Wombat.git)
 * [vim-rails.git](https://github.com/tpope/vim-rails.git)
 * [SunburstVIM.git](https://github.com/tangphillip/SunburstVIM.git)
 * [vim-snipmate.git](https://github.com/garbas/vim-snipmate.git)
 * [tlib_vim.git](https://github.com/tomtom/tlib_vim.git)
 * [snipmate-snippets.git](https://github.com/honza/snipmate-snippets.git)
 * [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
 * [vim-velocity.git](https://github.com/lepture/vim-velocity.git)
 * [vim-addon-mw-utils.git](https://github.com/MarcWeber/vim-addon-mw-utils.git)
 * [neocomplcache.git](https://github.com/Shougo/neocomplcache.git)
 * [neosnippet](https://github.com/Shougo/neosnippet)
 * [vim-colors-solarized.git](https://github.com/altercation/vim-colors-solarized.git)
 * [jellybeans.vim](https://github.com/nanotech/jellybeans.vim)
 * [vim-railscasts-theme.git](https://github.com/jpo/vim-railscasts-theme.git)
 * [vim-tomorrow-theme.git](https://github.com/chriskempson/vim-tomorrow-theme.git)
 * [vimroom.git](https://github.com/mikewest/vimroom.git)
 * [vim-powerline.git](https://github.com/Lokaltog/vim-powerline.git)
 * [tagbar.git](https://github.com/majutsushi/tagbar.git)
 * [clang_complete.git](https://github.com/Rip-Rip/clang_complete.git)
 * [neocomplcache-clang_complete.git](https://github.com/Shougo/neocomplcache-clang_complete.git)
 * [neverland-vim-theme.git](https://github.com/trapd00r/neverland-vim-theme.git)
 * [ir_black.git](https://github.com/twerth/ir_black.git)
 * [ctrlp.vim.git](https://github.com/kien/ctrlp.vim.git)
 * [vim-markdown.git](https://github.com/plasticboy/vim-markdown.git)
 * [mheg.git](https://github.com/vim-scripts/mheg.git)
 * [colour-schemes](https://github.com/gorodinskiy/colour-schemes)

* HTML/HAML
 * [html5.vim.git](https://github.com/othree/html5.vim.git)
 * [vim-html5validator.git](https://github.com/hokaccha/vim-html5validator.git)
 * [vim-haml.git](https://github.com/tpope/vim-haml.git)
 * [MatchTag.git](https://github.com/gregsexton/MatchTag.git)

* CSS/LESS
 * [vim-css3-syntax.git](https://github.com/hail2u/vim-css3-syntax.git)
 * [vim-css-color.git](https://github.com/ap/vim-css-color.git)
 * [vim-less.git](https://github.com/groenewege/vim-less.git)

* JavaScript
 * [vim-javascript.git](https://github.com/pangloss/vim-javascript.git)
 * [vim-jquery.git](https://github.com/itspriddle/vim-jquery.git)
 * [vim-coffee-script.git](https://github.com/kchmck/vim-coffee-script.git)
 * [jshint.vim.git](https://github.com/walm/jshint.vim.git)
 * [vim-javascript-syntax.git](https://github.com/jelera/vim-javascript-syntax.git)
 * [jscomplete-vim.git](https://github.com/teramako/jscomplete-vim.git)

* JSON
 * [vim-json.git](https://github.com/leshill/vim-json.git)

* PHP
 * [php.vim--Garvin.git](https://github.com/vim-scripts/php.vim--Garvin.git)
 * [PHP-Indenting-for-VIm.git](https://github.com/2072/PHP-Indenting-for-VIm.git)

* Python/Django
 * [jedi-vim.git](https://github.com/davidhalter/jedi-vim.git)
 * [python-mode.git](https://github.com/klen/python-mode.git)
 * [pydoc.vim.git](https://github.com/fs111/pydoc.vim.git)

* Ruby/Rails
 * [vim-ruby.git](https://github.com/vim-ruby/vim-ruby.git)
 * [vim-rails.git](https://github.com/tpope/vim-rails.git)
 * [vim-endwise.git](https://github.com/tpope/vim-endwise.git)

* Jade
 * [vim-jade.git](https://github.com/digitaltoad/vim-jade.git)

* Stylus
 * [vim-stylus.git](https://github.com/wavded/vim-stylus.git)

* Scala
 * [vim-scala.git](https://github.com/derekwyatt/vim-scala.git)
 * [scala-vim-snippets.git](https://github.com/gorodinskiy/scala-vim-snippets.git)
