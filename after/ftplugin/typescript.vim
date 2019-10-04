" https://damien.pobel.fr/post/configure-neovim-vim-gf-javascript-import/
set path=.,src
set suffixesadd=.ts,.tsx,.js,.jsx

function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        try
            let mainFile = json_decode(join(readfile(packageJsonPath))).main

            return nodeModules . a:fname . "/" . mainFile
        catch /.*/
            let indexJs = nodeModules . a:fname . "/index.js"

            if filereadable(indexJs)
                return indexJs
            else
                return nodeModules . a:fname
            endif
        endtry
    else
        return nodeModules . a:fname
    endif
endfunction

set includeexpr=LoadMainNodeModule(v:fname)
