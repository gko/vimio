" Public NERDTree-aware versions of builtin functions
function! CD(...)
    if exists("a:1")
        execute "cd ".fnameescape(a:1)
    else
        execute "cd"
    endif

    try
        NERDTree
    catch
        execute "Ex ".getcwd()
    endtry
endfunction
