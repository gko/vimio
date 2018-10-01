" Konstantin Gorodinskiy(mail[at]konstantin.io)

set nocompatible
filetype off

let mapleader = ","

call plug#begin()

"General stuff
 Plug 'xolox/vim-misc'
 Plug 'xolox/vim-easytags', { 'on': ['UpdateTags', 'HighlightTags'] }
 Plug 'vim-scripts/TaskList.vim', { 'on':  'TaskList' }
 Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeCWD', 'NERDTreeClose', 'NERDTreeFind', 'NERDTreeFocus', 'NERDTreeFromBookmark', 'NERDTreeMirror', 'NERDTreeToggle'] }
 Plug 'mattn/emmet-vim'
 Plug 'scrooloose/nerdcommenter'
 Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
 Plug 'vim-scripts/mheg', { 'for': 'mheg' }
 " Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
 Plug 'editorconfig/editorconfig-vim'
 Plug 'janko-m/vim-test', { 'for': ['javascript', 'typescript', 'go', 'rust', 'scala'], 'on': ['TestNearest', 'TestFile', 'TestSuite', 'TestLast', 'TestVisit'] }
 Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' },
 Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
 Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
 Plug 'tpope/vim-fugitive', { 'on': ['Gcommit', 'Gstatus', 'Gblame', 'Gedit', 'Gmove', 'Gdelete'] }
 Plug 'w0rp/ale', { 'for': ['javascript', 'typescript', 'go', 'rust', 'scala'] }
 Plug 'burntsushi/ripgrep', { 'on': 'Rg' }
 " requires specific font
 " Plug 'ryanoasis/vim-devicons', { 'on':  'NERDTreeToggle' }

"Colorschemes
 Plug 'AlxHnr/clear_colors'
 Plug 'w0ng/vim-hybrid'
 Plug 'fxn/vim-monochrome'
 Plug 'arcticicestudio/nord-vim'
 Plug 'rhysd/vim-color-spring-night'
 Plug 'dterei/VimCobaltColourScheme'
 Plug 'tpope/vim-vividchalk'
 Plug 'reedes/vim-colors-pencil'
 Plug 'chriskempson/base16-vim'
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
 			\ 'do': 'yarn install',
 			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
" JSX
 Plug 'mxw/vim-jsx', { 'for': 'jsx' }

" Typescript
 Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
 Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }

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
	
call plug#end()
