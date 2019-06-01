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

 * <kbd>Ctrl</kbd> + <kbd>s</kbd> saves current file(works only in Neovim)
 * <kbd>Leader</kbd> + <kbd>s</kbd> in both `select` and `normal` mode initiates search and replace
 * <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd> moves line or selection above
   or below current line(see [upside-down](https://github.com/gko/upside-down) for more info)
 * <kbd>Alt</kbd> + <kbd>Left</kbd>/<kbd>Right</kbd> moves character or
   selection to left or to the right
 * <kbd>Ctrl</kbd> + <kbd>n</kbd> toggles NERDTree
 * <kbd>Ctrl</kbd> + <kbd>m</kbd> shows current file in NERDTree
 * when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly
 * <kbd>Ctrl</kbd> + <kbd>y</kbd> + <kbd>,</kbd> expands abbreviation(see [emmet plugin](https://github.com/mattn/emmet-vim/blob/master/README.mkd#quick-tutorial))
 * <kbd>y</kbd> + <kbd>m</kbd> yanks found matches(see
   [yankmatches.vim](https://github.com/yko/vimio/blob/master/after/plugin/yankmatches.vim)
   for more info)
 * <kbd>m</kbd> + <kbd>m</kbd> toggles bookmark(see [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks) plugin)
 * <kbd>Leader</kbd> + <kbd>w</kbd> + <kbd>w</kbd> opens `~/notes/index.md`(see
   [vimwiki](https://github.com/vimwiki/vimwiki/blob/master/README.md) plugin, default
   `vimwiki` folder is `~/notes`)

Even though `vimwiki` works like magic I decided to keep `markdown` syntax
highlight via [vim-markdown](https://github.com/plasticboy/vim-markdown). You
can see this configuration in [filetypes.vim](https://github.com/gko/vimio/blob/master/after/plugin/filetypes.vim) file.

## List of plugins

You can find list of plugins in the [init.vim](https://github.com/gko/vimio/blob/master/init.vim) file, as well as commands that they provide.

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2019 Konstantin Gorodinskiy
