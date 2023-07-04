" set path=.,src
set suffixesadd=.scss,.sass,.css

function! LoadStyle(fname)
    if isdirectory(a:fname)
        :cd a:fname
    endif

    let withUnderscore = substitute(a:fname, '\([^\.\\\/]*\)$', '_\1.scss', "g")
    throw withUnderscore

    if filereadable(withUnderscore)
        return withUnderscore
    endif

    return a:fname
endfunction

set includeexpr=LoadStyle(v:fname)
