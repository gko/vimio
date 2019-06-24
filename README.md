# Vim Settings

![screenshot](https://raw.github.com/gko/vimio/master/screenshot.png)

## Prerequisites

In order to get all features you might want to install following packages:
 - [fzf](https://github.com/junegunn/fzf)
 - [ripgrep](https://github.com/BurntSushi/ripgrep)
 - [npm](https://www.npmjs.com/get-npm)

## Installation

On unix and windows(with bash which can be installed with [git](http://msysgit.github.io/)):
```shell
curl -L https://raw.github.com/gko/vimio/master/install.sh | bash
```

## Shortcuts

Some of shortcuts(<kbd>Leader</kbd> key is comma):

* <kbd>Ctrl</kbd> + <kbd>s</kbd> saves current file
* <kbd>Leader</kbd> + <kbd>s</kbd> in both `select` and `normal` mode initiates search and replace
* <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd> moves line or selection above
   or below current line(see [upside-down](https://github.com/gko/upside-down) for more info)
* <kbd>Alt</kbd> + <kbd>Left</kbd>/<kbd>Right</kbd> moves character or
   selection to left or to the right
* <kbd>Leader</kbd> + <kbd>n</kbd> toggles NERDTree
* <kbd>Leader</kbd> + <kbd>m</kbd> shows current file in NERDTree
* when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly
* <kbd>y</kbd> + <kbd>m</kbd> yanks found matches(see
   [yankmatches.vim](https://github.com/yko/vimio/blob/master/after/plugin/yankmatches.vim)
   for more info)
* <kbd>Leader</kbd> + <kbd>w</kbd> + <kbd>w</kbd> opens `~/notes/index.md`
 
## Plugin shortcuts

* [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks#usage)
* [vim-emmet](https://github.com/mattn/emmet-vim#quick-tutorial)
* [vim-checkbox](https://github.com/jkramer/vim-checkbox#usage)

## List of plugins and commands

You can find list of plugins and exposed commands in the [init.vim](https://github.com/gko/vimio/blob/master/init.vim) file, as well as commands that they provide.

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2019 Konstantin Gorodinskiy
