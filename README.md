# Vim Settings

![screenshot](/screenshot.png)

An [article](https://dev.to/konstantin/configuring-a-perfect-editor-for-frontend-development-1pe5) describing key features of this config.

## Prerequisites

In order to get all features you might want to install following packages:

- [fzf](https://github.com/junegunn/fzf#installation)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

## Installation

On unix and windows(with bash which can be installed with [git](http://msysgit.github.io/)):

```shell
curl -L https://raw.github.com/gko/vimio/main/install.sh | bash
```

### macOS

In macOS terminal.app don't forget to check the «Use option as meta key»:

![terminal](/terminal.png)

And «Esc+» option in iterm2:

![iterm2](/iterm2.png)

## Shortcuts

Some of shortcuts(<kbd>Leader</kbd> key is comma):

- <kbd>Ctrl</kbd> + <kbd>s</kbd> saves current file
- <kbd>Leader</kbd> + <kbd>s</kbd> in both `select` and `normal` mode initiates search and replace
- <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd> moves line or selection above
  or below current line(see [upside-down](https://github.com/gko/upside-down) for more info)
- <kbd>Alt</kbd> + <kbd>Left</kbd>/<kbd>Right</kbd> moves character or
  selection to left or to the right
- <kbd>Leader</kbd> + <kbd>n</kbd> toggles NERDTree
- <kbd>Leader</kbd> + <kbd>m</kbd> shows current file in NERDTree
- when in select mode <kbd>'</kbd>, <kbd>"</kbd>, <kbd>(</kbd> wraps selection accordingly
- <kbd>y</kbd> + <kbd>m</kbd> yanks found matches(see
  [yankmatches.vim](https://github.com/gko/vimio/blob/main/after/plugin/yankmatches.vim)
  for more info)

### Plugin shortcuts

- [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks#usage)
- [vim-emmet](https://github.com/mattn/emmet-vim#quick-tutorial)
- [vim-checkbox](https://github.com/jkramer/vim-checkbox#usage)
- [vim-gh-line](https://github.com/ruanyl/vim-gh-line#how-to-use)
- [vim-jsdoc](https://github.com/heavenshell/vim-jsdoc#usage)
- [md-img-paste.vim](https://github.com/ferrine/md-img-paste.vim#usage)
- [vim-doge](https://github.com/kkoomen/vim-doge#gdoge_mapping)

#### vim-surround

For general instructions see
[README](https://github.com/tpope/vim-surround#surroundvim)

See [this issue](https://github.com/tpope/vim-surround/issues/220) for visual mode

#### Coc.nvim

For vim I use Coc.nvim, in their repository you can find their [example vim configuration](https://github.com/neoclide/coc.nvim#example-vim-configuration) for shortcuts.

#### nvim-lspconfig

For nvim I use native nvim lsp config. You can find the example config here: [example lsp config](https://github.com/neovim/nvim-lspconfig#suggested-configuration)

##### Language servers installation

###### Typescript/Javascript

https://github.com/typescript-language-server/typescript-language-server#installing

###### Go

https://github.com/golang/tools/tree/master/gopls#installation

###### Rust

https://rust-analyzer.github.io/manual.html#installation

you may need to install:

- rustup https://github.com/rust-lang/rustup#installation
- rust-src `rustup component add rust-src`

###### Zig

https://github.com/zigtools/zls/wiki/Installation#install-zls

###### Scala

https://scalameta.org/metals/docs/editors/vim/#using-an-alternative-lsp-client

###### PHP

https://github.com/bmewburn/intelephense-docs/blob/master/installation.md

## List of all plugins and commands

You can find the list of plugins as well as commands that they provide in the [init.vim](https://github.com/gko/vimio/blob/main/init.vim) file.

## Your config

If you create `~/.vimrc.local` it will be loaded before the end of `vim-plug`.
So you can add a custom config + vim plugins of your choice there.

Example [.vimrc.local](/.vimrc.local).

### Color scheme

You can have a `~/.vimrc_background` file, where you keep custom colorscheme
settings.

Example can be found [here](/.vimrc_background). And you can symlink it as
following:
```shell
ln -sf ~/.vim/.vimrc_background ~/
```
### Taking notes and TODOs

- <kbd>Leader</kbd> + <kbd>w</kbd> + <kbd>w</kbd> opens `~/Documents/Notes/index.md`
- :Todo opens `~/Documents/Notes/todo.md` in a vertical split and fills in current date

see more info in this article: https://dev.to/konstantin/taking-notes-in-vim-revisited-558k
you can find the code here:
https://github.com/gko/vimio/blob/de73a9272c29acc6f2ce6d5be7f24cbe113a85b4/after/plugin/shortcuts.vim#L225-L229

and here

https://github.com/gko/vimio/blob/de73a9272c29acc6f2ce6d5be7f24cbe113a85b4/after/plugin/filetypes.vim#L28-L32

#### Checkboxes

For checkboxes [vim-checkbox](https://github.com/jkramer/vim-checkbox#usage) plugin is installed

#### Pasting images

With help of [md-img-paste.vim](https://github.com/ferrine/md-img-paste.vim#usage) you can paste images by using <kbd>Leader</kbd> + <kbd>p</kbd> (it would store in the same folder as the markdown document in `img` folder)

## Benchmark

Not that it matters, but I get the following startup time:
```
$ hyperfine "nvim --headless +qa" --warmup 5
Benchmark 1: nvim --headless +qa
    Time (mean ± σ):     200.1 ms ±   6.9 ms    [User: 123.9 ms, System: 63.2 ms]
    Range (min … max):   191.9 ms … 210.9 ms    14 runs
```

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2024 Konstantin Gorodinskiy
