" Konstantin Gorodinskiy(mail[at]konstantin.io)

set nocompatible
filetype off

let mapleader = ","

call plug#begin()

"General stuff
	Plug 'vim-scripts/TaskList.vim', { 'on':  'TaskList' }
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'mattn/emmet-vim'
	Plug 'tpope/vim-git'
	Plug 'scrooloose/nerdcommenter'
	Plug 'majutsushi/tagbar'
	Plug 'kien/ctrlp.vim'
	Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
	Plug 'vim-scripts/mheg', { 'for': 'mheg'}
	Plug 'mustache/vim-mustache-handlebars'
	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'janko-m/vim-test', { 'for': ['javascript', 'typescript', 'go', 'rust', 'scala'] }
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'w0rp/ale', { 'for': ['javascript', 'typescript', 'go', 'rust', 'scala'] }

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

" CSS/LESS
	Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
	Plug 'gko/vim-coloresque', { 'for': ['css', 'scss', 'sass', 'stylus'] }
	Plug 'groenewege/vim-less', { 'for':  'less' }

" JavaScript
	Plug 'pangloss/vim-javascript', { 'for':  'javascript' }
	Plug 'prettier/vim-prettier', {
				\ 'do': 'yarn install',
				\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" Typescript
	Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }
	Plug 'Quramy/tsuquyomi', { 'for': ['typescript'] }

" JSON
	Plug 'leshill/vim-json', { 'for': ['json'] }

" PHP
	Plug 'vim-scripts/php.vim--Garvin', { 'for': ['php'] }
	Plug '2072/PHP-Indenting-for-VIm', { 'for': ['php'] }


" Python/Django
	Plug 'klen/python-mode', { 'for': ['python'] }
	Plug 'davidhalter/jedi-vim', { 'for': ['python'] }

" C/C++
	Plug 'justmao945/vim-clang', { 'for': ['c', 'c++'] }

" Go
	Plug 'fatih/vim-go', { 'for': ['go'] }

" Ruby/Rails
	Plug 'vim-ruby/vim-ruby', { 'for': ['ruby'] }
	Plug 'tpope/vim-rails', { 'for': ['ruby'] }

" Dart
	Plug 'dart-lang/dart-vim-plugin', { 'for': ['dart'] }

" Jade
	Plug 'digitaltoad/vim-jade', { 'for': ['pug'] }

" Stylus
	Plug 'wavded/vim-stylus', { 'for': ['stylus'] }

" Scala
	Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }

" Java
	Plug 'artur-shaik/vim-javacomplete2', { 'for': ['java'] }
	
call plug#end()

"let g:typescript_compiler_options = '-t ES6'

source ~/.vim/settings/os.vim
source ~/.vim/settings/overall.vim
source ~/.vim/settings/functions.vim
source ~/.vim/settings/shortcuts.vim
source ~/.vim/settings/filespecific.vim
source ~/.vim/settings/ctags.vim
