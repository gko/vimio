syntax on

set background=light

let supportsTrueColor = $COLORTERM == "truecolor" || $COLORTERM == "24bit"
if has("termguicolors") && supportsTrueColor
    set termguicolors
endif

set t_Co=256
let g:molokai_original = 1
let g:solarized_termcolors=256

" set colorscheme
" if you have base16 installed take that colorscheme
try
    if filereadable(expand("~/.vimrc_background"))
        let base16colorspace=256
        source ~/.vimrc_background
        let g:airline_theme='base16'
    else
        colorscheme github

        " https://github.com/cormacrelf/vim-colors-github/pull/5
        hi! link SignColumn LineNr

        let g:airline_theme = "github"
    endif
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
endtry
