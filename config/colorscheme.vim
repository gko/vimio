set background=light
let g:molokai_original = 1
set t_Co=256
let g:solarized_termcolors=256

" set colorscheme
" if you have base16 installed take that colorscheme
try
    if filereadable(expand("~/.vimrc_background"))
        let base16colorspace=256
        source ~/.vimrc_background
    else
        colorscheme snow
    endif
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
endtry
