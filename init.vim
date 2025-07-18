" Konstantin Gorodinskiy(mail[at]konstantin.io)

if exists('g:vscode')
    finish
endif

set nocompatible
filetype plugin on

let mapleader = ","

" https://stackoverflow.com/a/75963085/676756
" ~/.local/share/nvim/plugged/ for nvim
" ~/.vim/plugged/ for vim
call plug#begin()

" General stuff {{{
    " see https://github.com/gko/vimio/blob/master/after/plugin/copilot.vim
    Plug 'github/copilot.vim', { 'on': 'Copilot' }
    Plug 'mhinz/vim-startify'
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'xolox/vim-misc'
    " FIXME when deleting a multiline comment it deletes whitespace after
    " this comment
    " Plug 'jiangmiao/auto-pairs'

    if has('nvim')
        Plug 'alec-gibson/nvim-tetris', { 'on': 'Tetris' }
    endif

    " https://github.com/tmsvg/pear-tree/issues/33
    " breaks the CR for the popup (i.e. in coc.nvim)
    " temporary fix https://github.com/tmsvg/pear-tree/issues/33#issuecomment-777888854 (see /after/plugin/lsp.vim)
    Plug 'tmsvg/pear-tree'

    Plug 'terryma/vim-multiple-cursors'
    Plug 'gcmt/taboo.vim'
    " Plug 'chaoren/vim-wordmotion'

    Plug 'xolox/vim-easytags', {
            \ 'on': [
                \ 'UpdateTags',
                \ 'HighlightTags'
            \ ] }

    Plug 'vim-scripts/TaskList.vim', { 'on':  'TaskList' }

    Plug 'voldikss/vim-floaterm', {
            \ 'on': [
                \ 'FloatermNew',
                \ 'FloatermToggle',
                \ 'FloatermPrev',
                \ 'FloatermNext'
            \ ] }

    Plug 'wellle/context.vim', {
            \ 'on': [
                \ 'ContextActivate',
                \ 'ContextEnable',
                \ 'ContextDisable',
                \ 'ContextToggle',
                \ 'ContextUpdate'
            \ ] }

    Plug 'kkoomen/vim-doge'
    Plug 'mattn/emmet-vim'
    Plug 'preservim/nerdcommenter'
    Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
    Plug 'editorconfig/editorconfig-vim'

    " slows things down considerably
    " if has('nvim') && has('nvim-0.3.0') && (has('python') || has('python3'))
    " Plug 'TaDaa/vimade'
    " endif

    Plug 'janko/vim-test', {
            \ 'for': [
                \ 'javascript',
                \ 'typescript',
                \ 'go',
                \ 'c',
                \ 'cpp',
                \ 'rust',
                \ 'scala'],
            \ 'on': [
                \ 'TestNearest',
                \ 'TestFile',
                \ 'TestSuite',
                \ 'TestLast',
                \ 'TestVisit'
            \ ] }

    " Plug 'jpalardy/vim-slime'

    Plug 'tpope/vim-surround'
    Plug 'pbrisbin/vim-mkdir'
    " http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
    Plug 'godlygeek/tabular'
    " Plug 'tyru/open-browser.vim'

    Plug 'mattn/webapi-vim'
    Plug 'mattn/gist-vim', { 'on': ['Gist'] }

    " https://github.com/szw/vim-g/pull/19
    Plug 'gko/vim-g'
    " Plug 'airblade/vim-rooter'

    Plug 'pechorin/any-jump.vim'

    Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme', 'wast', 'wat'] }

    Plug 'sedm0784/vim-you-autocorrect', {
            \ 'on': [
                \ 'EnableAutocorrect',
                \ 'DisableAutocorrect'
            \ ] }

    Plug 'bogado/file-line'
    " Plug 'wsdjeg/vim-fetch'
    Plug 'gko/upside-down'
    Plug 'kristijanhusak/vim-carbon-now-sh', { 'on': 'CarbonNowSh' }
" }}}

" Git stuff {{{
    Plug 'tpope/vim-fugitive', {
            \ 'on': [
                \ 'Git',
                \ 'Gcommit',
                \ 'Gstatus',
                \ 'Gblame',
                \ 'Gdiff',
                \ 'Gedit',
                \ 'Gmove',
                \ 'Gdelete',
                \ 'Flog',
                \ 'Flogsplit'
            \ ] }

    Plug 'rbong/vim-flog', {
            \ 'on': [
                \ 'Flog',
                \ 'Flogsplit'
            \ ] }

    Plug 'junegunn/vim-github-dashboard', {
            \ 'on': [
                \ 'GHDashboard',
                \ 'GHActivity'
            \ ] }

    Plug 'ruanyl/vim-gh-line'

    Plug 'airblade/vim-gitgutter'
" }}}

    Plug 'scrooloose/nerdtree', {
        \ 'on': [
            \ 'NERDTree',
            \ 'NERDTreeCWD',
            \ 'NERDTreeClose',
            \ 'NERDTreeFind',
            \ 'NERDTreeFocus',
            \ 'NERDTreeFromBookmark',
            \ 'NERDTreeMirror',
            \ 'NERDTreeToggle'
        \ ] }

    if isdirectory('/usr/local/opt/fzf')
        Plug '/usr/local/opt/fzf'
    else
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    endif

    Plug 'junegunn/fzf.vim', {
        \ 'on': [
            \ 'Ag',
            \ 'Rg',
            \ 'FZF',
            \ 'Files',
            \ 'GitFiles',
            \ 'Buffers',
            \ 'Commits',
            \ 'BCommits',
            \ 'Tags',
            \ 'BTags',
            \ 'History',
            \ 'Lines',
            \ 'BLines',
            \ 'Marks'
        \ ] }

    Plug 'honza/vim-snippets'

" LSP {{{
    if has('nvim') && has('nvim-0.5.0')
        Plug 'L3MON4D3/LuaSnip'
        Plug 'saadparwaiz1/cmp_luasnip'

        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/nvim-cmp'

        Plug 'neovim/nvim-lspconfig'

        Plug 'rafcamlet/nvim-luapad', { 'on': 'Luapad' }

        Plug 'nvim-lua/plenary.nvim'

        " before using to login
        " :Copilot auth
        Plug 'olimorris/codecompanion.nvim', { 'on': ['CodeCompanionCmd', 'CodeCompanionActions', 'CodeCompanionChat'] }

        Plug 'nvim-telescope/telescope.nvim'
        Plug 'nvim-pack/nvim-spectre'
    elseif executable('npm')
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'neoclide/coc-tsserver', {'do': 'npm i', 'for': ['javascript', 'typescript'] }
        " ERESOLVE unable to resolve dependency tree
        " Plug 'neoclide/coc-snippets', {'do': 'npm i'}
        Plug 'neoclide/coc-sources', {'rtp': 'packages/emoji/', 'do': 'npm i'}
        " Plug 'neoclide/coc-java', {'do': 'npm i'}

        Plug 'DanBradbury/copilot-chat.vim', { 'on': ['CopilotChat', 'CopilotChatOpen'] }

        " install ultisnips only for coc
        if has('python') || has('python3')
            Plug 'SirVer/ultisnips'
        endif

        let g:UltiSnipsExpandTrigger="<nop>"
    endif
" }}}

" Colorschemes {{{
    Plug 'gko/vim-reset'
    Plug 'gko/oldbook-theme'
    Plug 'lifepillar/vim-wwdc17-theme'
    Plug 'devsjc/vim-jb'
    Plug 'daschw/leaf.nvim'
    Plug 'savq/melange'
    Plug 'rktjmp/lush.nvim'
    Plug 'mcchrish/zenbones.nvim'
    Plug 'habamax/vim-freyeday'
    Plug 'yasukotelin/shirotelin'
    Plug 'senran101604/neotrix.vim'
    Plug 'jeffkreeftmeijer/vim-dim'
    Plug 'chiendo97/intellij.vim'
    Plug 'kkga/vim-envy'
    Plug 'adrian5/oceanic-next-vim'
    Plug 'sainnhe/forest-night'
    Plug 'noahfrederick/vim-hemisu'
    Plug 'franbach/miramare'
    Plug 'Rigellute/rigel'
    Plug 'jonathanfilip/vim-lucius'
    Plug 'jnurmine/Zenburn'
    Plug 'equt/paper.vim'
    Plug 'kamwitsta/flatwhite-vim'
    Plug 'jaimebuelta/jaime-vim-colorscheme'
    Plug 'rakr/vim-two-firewatch'
    Plug 'sainnhe/edge'
    Plug 'Lokaltog/vim-monotone'
    Plug 'arzg/vim-colors-xcode'
    Plug 'rakr/vim-one'
    Plug 'sonph/onehalf', {'rtp': 'vim/'}
    Plug 'sainnhe/sonokai'
    Plug 'AlxHnr/clear_colors'
    Plug 'w0ng/vim-hybrid'
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'cocopon/iceberg.vim'
    Plug 'fxn/vim-monochrome'
    Plug 'arcticicestudio/nord-vim'
    Plug 'mhartington/oceanic-next'
    Plug 'rhysd/vim-color-spring-night'
    Plug 'dterei/VimCobaltColourScheme'
    Plug 'tpope/vim-vividchalk'
    Plug 'reedes/vim-colors-pencil'
    Plug 'chriskempson/base16-vim'
    Plug 'trapd00r/neverland-vim-theme'
    Plug 'chriskempson/vim-tomorrow-theme'
    Plug 'jpo/vim-railscasts-theme'
    " Plug 'altercation/vim-colors-solarized'
    Plug 'ericbn/vim-solarized'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'twerth/ir_black'
    Plug 'nanotech/jellybeans.vim'
    " Plug 'trevordmiller/nova-vim'
    Plug 'vim-scripts/Wombat'
    Plug 'sjl/badwolf'
    Plug 'zaiste/Atom'
    Plug 'morhetz/gruvbox'
    Plug 'kristijanhusak/vim-hybrid-material'
    " nightsense deleted all the repos
    " Plug 'nightsense/snow'
    " Plug 'nightsense/stellarized'
    " Plug 'nightsense/cosmic_latte'
    Plug 'cormacrelf/vim-colors-github'
    Plug 'romgrk/github-light.vim'
    Plug 'projekt0n/github-nvim-theme'
    if has('nvim')
        Plug 'rebelot/kanagawa.nvim'
    endif
" }}}

" HTML/HAML {{{
    Plug 'othree/html5.vim', { 'for': 'html' }
    " keeps crashing
    " Plug 'hokaccha/vim-html5validator', { 'for':  'html' }
    Plug 'tpope/vim-haml', { 'for':  'haml' }
    Plug 'mustache/vim-mustache-handlebars'
" }}}

" CSS/LESS {{{
    Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
    Plug 'gko/vim-coloresque', { 'for': ['css', 'scss', 'sass', 'stylus'] }
    Plug 'groenewege/vim-less', { 'for':  'less' }
" }}}

" JavaScript {{{
    Plug 'pangloss/vim-javascript', { 'for':  'javascript' }
    if executable('npm')
        Plug 'prettier/vim-prettier', {
                    \ 'do': 'npm install',
                    \ 'for': [
                    \ 'javascript',
                    \ 'html',
                    \ 'typescript',
                    \ 'css',
                    \ 'less',
                    \ 'scss',
                    \ 'json',
                    \ 'graphql',
                    \ 'markdown',
                    \ 'vue',
                    \ 'yaml'
                    \ ] }
    endif
    Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'typescript'] }
    Plug 'jparise/vim-graphql'
" }}}

" Typescript {{{
    if has('nvim')
        " Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
        " https://github.com/HerringtonDarkholme/yats.vim/pull/189
        Plug 'gko/yats.vim', { 'for': 'typescript' }
    else
        " TODO remove once merged https://github.com/leafgarland/typescript-vim/pull/140
        autocmd BufRead,BufNewFile *.tsx setfiletype typescriptreact
        " due to this issue https://github.com/HerringtonDarkholme/yats.vim/issues/25
        Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescriptreact'] }
    endif
    " Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
" }}}

" JSX {{{
    Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['javascript', 'typescript', 'typescriptreact'] }
" }}}

" Webassembly {{{
    Plug 'rhysd/vim-wasm', { 'for': ['wast', 'wat'] }
" }}}

" JSON {{{
    Plug 'elzr/vim-json', { 'for': 'json' }
" }}}

" TOML {{{
    Plug 'cespare/vim-toml', { 'for': 'toml' }
" }}}

" Python/Django {{{
    if has('python') || has('python3')
        Plug 'klen/python-mode', { 'for': 'python' }
    endif
" }}}

" Go {{{
    if executable('go')
        Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
    endif
" }}}

" Ruby/Rails {{{
    Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
    Plug 'tpope/vim-rails', { 'for': 'ruby' }
" }}}

" Dart {{{
    Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
" }}}

" Pug {{{
    Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
" }}}

" Stylus {{{
    Plug 'wavded/vim-stylus', { 'for': 'stylus' }
" }}}

" Scala {{{
    Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
" }}}

" Rust {{{
    Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" }}}

" Zig {{{
    Plug 'ziglang/zig.vim', {'for': 'zig'}
" }}}

" Elm {{{
    Plug 'ElmCast/elm-vim', { 'for': 'elm' }
    Plug 'elixir-editors/vim-elixir', { 'for': 'elm' }
" }}}

" Kotlin {{{
    Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
" }}}

" Markdown {{{
    Plug 'jkramer/vim-checkbox', { 'for': 'markdown' }
    Plug 'preservim/vim-markdown', { 'for': 'markdown' }

    if executable('npm')
        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install' }
    endif

    Plug 'ferrine/md-img-paste.vim', { 'for': 'markdown' }
" }}}

" Mheg {{{
    Plug 'vim-scripts/mheg', { 'for': 'mheg' }
" }}}

" Nginx {{{
    Plug 'chr4/nginx.vim'
" }}}

" Swift {{{
    Plug 'keith/swift.vim', { 'for': 'swift' }
" }}}

" Terraform {{{
    Plug 'hashivim/vim-terraform', { 'for': 'tf' }
" }}}

" Your part of config {{{
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
" }}}
call plug#end()
