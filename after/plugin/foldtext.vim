" Folding
" za - open/close current scope.
" {zR, zM} - {open, close} all scopes.
" from https://github.com/sjl/dotfiles/blob/master/vim/.vimrc
function! MyFoldText()
  let line = getline(v:foldstart)

  let nucolwidth = &fdc + &number * &numberwidth
  let windowwidth = winwidth(0) - nucolwidth - 3
  let foldedlinecount = v:foldend - v:foldstart

  " expand tabs into spaces
  let onetab = strpart(' ', 0, &tabstop)
  let line = substitute(line, '\t', onetab, 'g')

  let line = strpart(line, 0, windowwidth - 2 - len(foldedlinecount))
  let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
  return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction

set foldtext=MyFoldText()

set foldcolumn=0        " line width for folding
set foldmethod=indent   " folding with indents
set foldnestmax=10      " depth
set nofoldenable
set foldlevel=1
set fillchars="fold: "  " remove the extrafills --------
