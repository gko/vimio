" https://damien.pobel.fr/post/configure-neovim-vim-gf-javascript-import/
set path=.,src
set suffixesadd=.js,.jsx

function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        try
            let mainFile = json_decode(join(readfile(packageJsonPath))).main

            return nodeModules . a:fname . "/" . mainFile
        catch /.*/
            " in case they forgot to add main field to package.json
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
