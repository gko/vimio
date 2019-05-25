" Konstantin Gorodinskiy(mail[at]konstantin.io)

set nocompatible
filetype off

let mapleader = ","

call plug#begin()

"General stuff
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags', { 'on': ['UpdateTags', 'HighlightTags'] }
Plug 'vim-scripts/TaskList.vim', { 'on':  'TaskList' }
Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeCWD', 'NERDTreeClose', 'NERDTreeFind', 'NERDTreeFocus', 'NERDTreeFromBookmark', 'NERDTreeMirror', 'NERDTreeToggle'] }
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko-m/vim-test', { 'for': ['javascript', 'typescript', 'go', 'rust', 'scala'], 'on': ['TestNearest', 'TestFile', 'TestSuite', 'TestLast', 'TestVisit'] }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'metakirby5/codi.vim', { 'for': ['javascript', 'typescript', 'c', 'c++', 'ruby', 'python', 'r', 'clojure', 'php', 'haskell', 'elm', 'elixir'], 'on': ['Codi', 'Cody!', 'Codi!!'] }
" Plug 'airblade/vim-gitgutter'

if has("mac")
	Plug '/usr/local/opt/fzf'
endif
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all', 'on': ['Ag', 'Rg', 'FZF', 'Files', 'Buffers', 'Commits', 'BCommits', 'Tags', 'BTags', 'History', 'Lines', 'BLines', 'Marks'] },

Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'tpope/vim-fugitive', { 'on': ['Gcommit', 'Gstatus', 'Gblame', 'Gedit', 'Gmove', 'Gdelete'] }
Plug 'w0rp/ale', { 'for': ['javascript', 'typescript', 'go', 'rust', 'scala'] }
Plug 'vim-airline/vim-airline'
" requires specific font
" Plug 'ryanoasis/vim-devicons', { 'on':  'NERDTreeToggle' }
Plug 'sedm0784/vim-you-autocorrect', { 'on': ['EnableAutocorrect', 'DisableAutocorrect'] }
Plug 'wsdjeg/vim-fetch'
Plug 'gko/upside-down'
Plug 'gko/vim-layout'
Plug 'kristijanhusak/vim-carbon-now-sh'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1

"Colorschemes
Plug 'AlxHnr/clear_colors'
Plug 'w0ng/vim-hybrid'
Plug 'fxn/vim-monochrome'
Plug 'arcticicestudio/nord-vim'
Plug 'rhysd/vim-color-spring-night'
Plug 'dterei/VimCobaltColourScheme'
Plug 'tpope/vim-vividchalk'
Plug 'reedes/vim-colors-pencil'
" TODO update when fix will be merged
" Plug 'chriskempson/base16-vim'
Plug 'danielwe/base16-vim'
Plug 'trapd00r/neverland-vim-theme'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'jpo/vim-railscasts-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'twerth/ir_black'
Plug 'nanotech/jellybeans.vim'
Plug 'trevordmiller/nova-vim'
Plug 'vim-scripts/Wombat'
Plug 'sjl/badwolf'
Plug 'zaiste/Atom'
Plug 'morhetz/gruvbox'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'nightsense/snow'
Plug 'nightsense/stellarized'
Plug 'nightsense/cosmic_latte'
Plug 'cormacrelf/vim-colors-github'

" HTML/HAML
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hokaccha/vim-html5validator', { 'for':  'html' }
Plug 'tpope/vim-haml', { 'for':  'haml' }
Plug 'mustache/vim-mustache-handlebars'

" CSS/LESS
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'gko/vim-coloresque', { 'for': ['css', 'scss', 'sass', 'stylus'] }
Plug 'groenewege/vim-less', { 'for':  'less' }

" JavaScript
Plug 'pangloss/vim-javascript', { 'for':  'javascript' }
Plug 'prettier/vim-prettier', {
            \ 'do': 'npm install',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" JSX
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['jsx', 'tsx'] }

" Typescript
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }

" Webassembly
Plug 'rhysd/vim-wasm', { 'for': ['wast', 'wat'] }

" JSON
Plug 'elzr/vim-json', { 'for': 'json' }

" PHP
Plug 'StanAngeloff/php.vim', { 'for': 'php' }

" Python/Django
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" C/C++
Plug 'justmao945/vim-clang', { 'for': ['c', 'c++'] }

" Go
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
Plug 'mdempsky/gocode', { 'for': 'go' }

" Ruby/Rails
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }

" Dart
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }

" Jade
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }

" Stylus
Plug 'wavded/vim-stylus', { 'for': 'stylus' }

" Scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" Java
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }

" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'racer-rust/vim-racer', { 'for': 'rust' }

" Elm
Plug 'ElmCast/elm-vim', { 'for': 'elm' }
Plug 'elixir-editors/vim-elixir', { 'for': 'elm' }

" Kotlin
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }

" Markdown
Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Mheg
Plug 'vim-scripts/mheg', { 'for': 'mheg' }

call plug#end()
