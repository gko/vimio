"file types that weren't recognized for some reason
autocmd BufReadPre *.xsl set filetype=xslt
autocmd BufReadPre *.dtd set filetype=xslt
autocmd BufRead,BufNewFile *.vm set ft=html syntax=velocity
autocmd BufRead,BufNewFile *.vt set ft=html syntax=velocity
autocmd BufRead,BufNewFile *.less set filetype=less.css
autocmd BufReadPost *.mheg set syntax=mheg
autocmd BufReadPost *.mhg set syntax=mheg
autocmd BufReadPost *.ex set syntax=elm
autocmd BufReadPost *.exs set syntax=elm
autocmd BufReadPost *.eex set syntax=elm
autocmd BufReadPost *.elm set syntax=elm
autocmd BufRead,BufNewFile .babelrc set ft=json syntax=json
autocmd FileType vimwiki set ft=markdown
