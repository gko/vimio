# Vim Settings

![screenshot](https://raw.github.com/gko/vimio/master/screenshot.png)

## Prerequisites

In order to get all features you might want to install following packages:
 - [fzf](https://github.com/junegunn/fzf),
 - [ripgrep](https://github.com/BurntSushi/ripgrep)

## Installation

On unix and windows(with bash which can be installed with [git](http://msysgit.github.io/)):
```shell
curl -L https://raw.github.com/gko/vimio/master/install.sh | bash
```

## Shortcuts

Some of shortcuts(<kbd>Leader</kbd> key is comma):

### Terminal mode

 * <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd> moves line/selection above/below current previous/next line
 * <kbd>Alt</kbd> + <kbd>Left</kbd>/<kbd>Right</kbd> moves character/selection to left/right
 * <kbd>Leader</kbd> + <kbd>1</kbd>/<kbd>2</kbd>/<kbd>3</kbd> opens emacs like one, two(toggle vertical/horizontal), three split layout
 * <kbd>Ctrl</kbd> + <kbd>n</kbd> toggles Nerd Tree
 * <kbd>F5</kbd> toggles Tagbar(compiled tagbar for mac and windows in .vim/bin/ folder)
 * when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly + snippets(i.e. <kbd>'</kbd>+<kbd>TAB</kbd>)
 * <kbd>Ctrl</kbd> + <kbd>s</kbd> saves file, <kbd>Ctrl</kbd>+<kbd>a</kbd> selects all
 * <kbd>Leader</kbd> + <kbd>bd</kbd> closes current buffer,<kbd>Leader</kbd>+<kbd>q</kbd> closes split, <kbd>Leader</kbd>+<kbd>qa</kbd> quits vim
 * <kbd>Ctrl</kbd> + <kbd>Left/Right/Bottom/Top</kbd> moves around splits
 * <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Left/Right</kbd> next/previous buffer
 * <kbd>Ctrl</kbd> + <kbd>e</kbd> [zen coding](https://github.com/mattn/zencoding-vim) expand abbreviation
 * <kbd>Leader</kbd> + <kbd>s</kbd> in both select and normal mode search and replace

### GUI mode specific

 * <kbd>F5</kbd> toggles Tagbar(compiled tagbar for mac and windows in .vim/bin/ folder)
 * when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly + snippets(i.e. <kbd>'</kbd>+<kbd>TAB</kbd>)
 * <kbd>Ctrl</kbd> + <kbd>s</kbd> saves file, <kbd>Leader</kbd> + <kbd>a</kbd> selects all
 * <kbd>Ctrl</kbd> + <kbd>b</kbd> currently opened buffers
 * <kbd>Ctrl</kbd> + <kbd>p</kbd> go to any file in folder
 * <kbd>Ctrl</kbd>+<kbd>w</kbd> closes current buffer, <kbd>Ctrl</kbd>+<kbd>q</kbd> closes split, <kbd>Ctrl</kbd>+<kbd>qa</kbd> quits vim
 * <kbd>Ctrl</kbd> + <kbd>Left/Right/Bottom/Top</kbd> moves around splits
 * <kbd>Ctrl</kbd> + <kbd>Tab</kbd> next buffer
 * <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd> previous buffer
 * <kbd>Ctrl</kbd> + <kbd>e</kbd> [zen coding](https://github.com/mattn/zencoding-vim) expand abbreviation
 * <kbd>Leader</kbd> + <kbd>s</kbd> in both select and normal mode search and replace

## List of plugins

 * General stuff
   * [vim-scripts/TaskList.vim](https://github.com/vim-scripts/TaskList.vim)
   * [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
   * [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
   * [tpope/vim-git](https://github.com/tpope/vim-git)
   * [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
   * [majutsushi/tagbar](https://github.com/majutsushi/tagbar)
   * [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)
   * [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)
   * [vim-scripts/mheg](https://github.com/vim-scripts/mheg)
   * [mustache/vim-mustache-handlebars](https://github.com/mustache/vim-mustache-handlebars)
   * [SirVer/ultisnips](https://github.com/SirVer/ultisnips)
   * [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)
   * [janko-m/vim-test](https://github.com/janko-m/vim-test)
   * [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
   * [w0rp/ale](https://github.com/w0rp/ale)
   * [gko/upside-down](https://github.com/gko/upside-down)

 * Colorschemes
   * [AlxHnr/clear_colors](https://github.com/AlxHnr/clear_colors)
   * [w0ng/vim-hybrid](https://github.com/w0ng/vim-hybrid)
   * [fxn/vim-monochrome](https://github.com/fxn/vim-monochrome)
   * [arcticicestudio/nord-vim](https://github.com/arcticicestudio/nord-vim)
   * [rhysd/vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)
   * [dterei/VimCobaltColourScheme](https://github.com/dterei/VimCobaltColourScheme)
   * [tpope/vim-vividchalk](https://github.com/tpope/vim-vividchalk)
   * [reedes/vim-colors-pencil](https://github.com/reedes/vim-colors-pencil)
   * [chriskempson/base16-vim](https://github.com/chriskempson/base16-vim)
   * [trapd00r/neverland-vim-theme](https://github.com/trapd00r/neverland-vim-theme)
   * [chriskempson/vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)
   * [jpo/vim-railscasts-theme](https://github.com/jpo/vim-railscasts-theme)
   * [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
   * [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
   * [twerth/ir_black](https://github.com/twerth/ir_black)
   * [nanotech/jellybeans.vim](https://github.com/nanotech/jellybeans.vim)
   * [trevordmiller/nova-vim](https://github.com/trevordmiller/nova-vim)
   * [vim-scripts/Wombat](https://github.com/vim-scripts/Wombat)
   * [sjl/badwolf](https://github.com/sjl/badwolf)
   * [zaiste/Atom](https://github.com/zaiste/Atom)
   * [morhetz/gruvbox](https://github.com/morhetz/gruvbox)
   * [kristijanhusak/vim-hybrid-material](https://github.com/kristijanhusak/vim-hybrid-material)
   * [nightsense/snow](https://github.com/nightsense/snow)

 * HTML/HAML
   * [othree/html5.vim](https://github.com/othree/html5.vim)
   * [hokaccha/vim-html5validator](https://github.com/hokaccha/vim-html5validator)
   * [tpope/vim-haml](https://github.com/tpope/vim-haml)

 * CSS/LESS
   * [hail2u/vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
   * [gko/vim-coloresque](https://github.com/gko/vim-coloresque)
   * [groenewege/vim-less](https://github.com/groenewege/vim-less)

 * JavaScript
   * [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
   * [prettier/vim-prettier](https://github.com/prettier/vim-prettier)

 * Typescript
   * [leafgarland/typescript-vim](https://github.com/leafgarland/typescript-vim)
   * [Quramy/tsuquyomi](https://github.com/Quramy/tsuquyomi)

 * JSON
   * [leshill/vim-json](https://github.com/leshill/vim-json)

 * PHP
   * [vim-scripts/php.vim--Garvin](https://github.com/vim-scripts/php.vim--Garvin)
   * [2072/PHP-Indenting-for-VIm](https://github.com/2072/PHP-Indenting-for-VIm)

 * Python/Django
   * [klen/python-mode](https://github.com/klen/python-mode)
   * [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim)

 * C/C++
   * [justmao945/vim-clang](https://github.com/justmao945/vim-clang)

 * Go
   * [fatih/vim-go](https://github.com/fatih/vim-go)

 * Ruby/Rails
   * [vim-ruby/vim-ruby](https://github.com/vim-ruby/vim-ruby)
   * [tpope/vim-rails](https://github.com/tpope/vim-rails)

 * Dart
   * [dart-lang/dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin)

 * Jade
   * [digitaltoad/vim-jade](https://github.com/digitaltoad/vim-jade)

 * Stylus
   * [wavded/vim-stylus](https://github.com/wavded/vim-stylus)

 * Scala
   * [derekwyatt/vim-scala](https://github.com/derekwyatt/vim-scala)

 * Java
   * [artur-shaik/vim-javacomplete2](https://github.com/artur-shaik/vim-javacomplete2)

 * Rust
   * [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim)

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2018 Konstantin Gorodinskiy
