syntax on

" https://stackoverflow.com/a/54652367
" more optimized version of this function
function! IsDarkTerminalBackground()
    " get the value of the COLORFGBG environment variable
    let colorfgbg = $COLORFGBG

    " check if it is set and that it has a valid structure
    if empty(colorfgbg) || stridx(colorfgbg, ";") == -1
        return 0
    endif

    let parts = split(colorfgbg, ";")

    if len(parts) == 0
        return 0
    endif

    let color = parts[-1]

    if color == '0' || color == '1' || color == '2' ||
                \ color == '3' || color == '4' || color == '5' ||
                \ color == '6' || color == '8'
        return 1
    endif

    return 0
endfunction

set background=light
if IsDarkTerminalBackground() == 1
    set background=dark
endif

if exists('$TMUX')
    " Colors in tmux
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" if COLORTERM variable is not exposed but termguicolors colors are supported
" we probably should turn it on, otherwise the colors are messed up
let supportsTrueColor = $COLORTERM == "" || $COLORTERM == "truecolor" || $COLORTERM == "24bit"
if has("termguicolors") && supportsTrueColor
    set termguicolors
endif

set t_Co=256
let g:molokai_original = 1

" set colorscheme
" if you have base16 installed take that colorscheme
try
    if filereadable(expand("~/.vimrc_background"))
        let base16colorspace=256

        source ~/.vimrc_background

        if ! exists('g:airline_theme')
            let g:airline_theme='base16'
        endif

        " https://github.com/chriskempson/base16-vim/pull/210#issuecomment-609629586
        if exists('g:base16_gui0E')
            highlight CursorLineNr cterm=none gui=none
            exec "hi Statement guifg=#" . g:base16_gui0E
            exec "hi Statement ctermfg=" . g:base16_cterm0E
        endif
    else
        let g:github_colors_soft = 1
        let g:lightline = { 'colorscheme': 'github' }
        colorscheme github
        let g:airline_theme='github'

        " https://github.com/cormacrelf/vim-colors-github/pull/5
        hi! link SignColumn LineNr
    endif
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
endtry
