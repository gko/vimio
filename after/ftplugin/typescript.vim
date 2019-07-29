" https://damien.pobel.fr/post/configure-neovim-vim-gf-javascript-import/
set path=.,src
set suffixesadd=.js,.jsx,.ts,.tsx

function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        try
            let mainFile = json_decode(join(readfile(packageJsonPath))).main
            return nodeModules . a:fname . "/" . mainFile
        catch /.*/
            return nodeModules . a:fname
        endtry
    else
        return nodeModules . a:fname
    endif
endfunction

set includeexpr=LoadMainNodeModule(v:fname)
