#Vim Settings

##Installation

On unix and windows(with bash which can be installed with [git](http://msysgit.github.io/)):

    curl -L https://raw.github.com/gorodinskiy/vimio/dev/install.sh|sh

##Shortcuts

Some of shortcuts(<kbd>Leader</kbd> key is comma):

###Terminal mode
 * <kbd>Shift</kbd>+<kbd>Up</kbd>/<kbd>Down</kbd> moves line/selection above/below current previous/next line
 * <kbd>Shift</kbd>+<kbd>Left</kbd>/<kbd>Right</kbd> moves character/selection to left/right
 * <kbd>Leader</kbd>+<kbd>1</kbd>/<kbd>2</kbd>/<kbd>3</kbd> opens emacs like one, two(toggle vertical/horizontal), three split layout
 * <kbd>Backspace</kbd> toggles Nerd Tree
 * <kbd>F5</kbd> toggles Tagbar(compiled tagbar for mac and windows in .vim/bin/ folder)
 * when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly + snippets(i.e. <kbd>'</kbd>+<kbd>TAB</kbd>)
 * <kbd>Ctrl</kbd>+<kbd>s</kbd> saves file, <kbd>Ctrl</kbd>+<kbd>a</kbd> selects all
 * <kbd>Leader</kbd>+<kbd>bd</kbd> closes current buffer,<kbd>Leader</kbd>+<kbd>q</kbd> closes split, <kbd>Leader</kbd>+<kbd>qa</kbd> quits vim
 * <kbd>Ctrl</kbd> + <kbd>Left/Right/Bottom/Top</kbd> moves around splits
 * <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Left/Right</kbd> next/previous buffer
 * <kbd>Ctrl</kbd> + <kbd>e</kbd> [zen coding](https://github.com/mattn/zencoding-vim) expand abbreviation
 * <kbd>Leader</kbd> + <kbd>s</kbd> in both select and normal mode search and replace

###GUI mode specific
 * <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Up</kbd>/<kbd>Down</kbd> moves line/selection above/below current previous/next line
 * <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Left</kbd>/<kbd>Right</kbd> moves character/selection to left/right
 * <kbd>Leader</kbd>+<kbd>1</kbd>/<kbd>2</kbd>/<kbd>3</kbd> opens emacs like 1/2(toggle vertical/horizontal)/3 split layout
 * <kbd>Backspace</kbd> toggles Nerd Tree
 * <kbd>F5</kbd> toggles Tagbar(compiled tagbar for mac and windows in .vim/bin/ folder)
 * when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly + snippets(i.e. <kbd>'</kbd>+<kbd>TAB</kbd>)
 * <kbd>Ctrl</kbd>+<kbd>s</kbd> saves file, <kbd>Leader</kbd>+<kbd>a</kbd> selects all
 * <kbd>Ctrl</kbd> + <kbd>b</kbd> currently opened buffers
 * <kbd>Ctrl</kbd> + <kbd>p</kbd> go to any file in folder
 * <kbd>Ctrl</kbd>+<kbd>w</kbd> closes current buffer, <kbd>Ctrl</kbd>+<kbd>q</kbd> closes split, <kbd>Ctrl</kbd>+<kbd>qa</kbd> quits vim
 * <kbd>Ctrl</kbd> + <kbd>Left/Right/Bottom/Top</kbd> moves around splits
 * <kbd>Ctrl</kbd> + <kbd>Tab</kbd> next buffer
 * <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd> previous buffer
 * <kbd>Ctrl</kbd> + <kbd>e</kbd> [zen coding](https://github.com/mattn/zencoding-vim) expand abbreviation
 * <kbd>Leader</kbd> + <kbd>s</kbd> in both select and normal mode search and replace

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

* Dart
 * [dart-vim-plugin.git](https://github.com/dart-lang/dart-vim-plugin.git)

* Jade
 * [vim-jade.git](https://github.com/digitaltoad/vim-jade.git)

* Stylus
 * [vim-stylus.git](https://github.com/wavded/vim-stylus.git)

* Scala
 * [vim-scala.git](https://github.com/derekwyatt/vim-scala.git)
 * [scala-vim-snippets.git](https://github.com/gorodinskiy/scala-vim-snippets.git)

 ## License

 [MIT](http://opensource.org/licenses/MIT)

 Copyright (c) 2012-2016 Konstantin Gorodinskiy
