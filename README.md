# Vim Settings

![screenshot](https://raw.github.com/gko/vimio/master/screenshot.png)

## Prerequisites

In order to get all features you might want to install following packages:
 - [fzf](https://github.com/junegunn/fzf),
 - [ripgrep](https://github.com/BurntSushi/ripgrep)
 - [npm](https://www.npmjs.com/get-npm)

## Installation

On unix and windows(with bash which can be installed with [git](http://msysgit.github.io/)):
```shell
curl -L https://raw.github.com/gko/vimio/master/install.sh | bash
```

## Shortcuts

Some of shortcuts(<kbd>Leader</kbd> key is comma):

 * <kbd>Ctrl</kbd> + <kbd>s</kbd> saves file
 * <kbd>Leader</kbd> + <kbd>s</kbd> in both `select` and `normal` mode search and replace
 * <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd> moves line/selection above/below current previous/next line
 * <kbd>Alt</kbd> + <kbd>Left</kbd>/<kbd>Right</kbd> moves character/selection to left/right
 * <kbd>Ctrl</kbd> + <kbd>n</kbd> toggles Nerd Tree
 * <kbd>Ctrl</kbd> + <kbd>m</kbd> opens file in NERD Tree
 * when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly + snippets(i.e. <kbd>'</kbd>+<kbd>TAB</kbd>)

## List of plugins

You can find list of plugins in the [init.vim](https://github.com/gko/vimio/blob/master/init.vim) file, as well as commands that they provide.

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2018 Konstantin Gorodinskiy
