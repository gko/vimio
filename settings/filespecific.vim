"""""""""""""""""""""""""""""""""""""""""""""""
" File specific
"""""""""""""""""""""""""""""""""""""""""""""""
"file types that weren't recognized for some reason
autocmd BufReadPre *.xsl set filetype=xslt
autocmd BufReadPre *.dtd set filetype=xslt
au BufRead,BufNewFile *.vm set ft=html syntax=velocity
au BufRead,BufNewFile *.vt set ft=html syntax=velocity
autocmd BufRead,BufNewFile *.less set filetype=less.css
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

autocmd BufNewFile *.py 0r $VIMHOME/templates/template.py
autocmd BufNewFile *.xml 0r $VIMHOME/templates/template.xml
autocmd BufNewFile *.xsl 0r $VIMHOME/templates/template.xsl
autocmd BufNewFile *.jade 0r $VIMHOME/templates/template.jade
autocmd BufNewFile *.html 0r $VIMHOME/templates/template.html

autocmd BufReadPost *.mheg set syntax=mheg
autocmd BufReadPost *.mhg set syntax=mheg

autocmd FileType javascript
            \ :setl omnifunc=jscomplete#CompleteJS

let g:javascript_conceal=1
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"

"let g:node_usejscomplete = 1
let g:jscomplete_use = ['dom', 'moz', 'xpcom', 'es6th']

autocmd FileType jade setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

"if has("autocmd")
  "autocmd! bufwritepost .vimrc source $HOME/.vimrc
"endif

"hi ColorColumn ctermbg=black guibg=#212121
"let g:vimroom_guibackground="#1d1f21"
"let g:AutoPairsMapCR = 0

let g:netrw_ftp_cmd="ftp -p"
set history=1000 " store lots of :cmdline history

"for TOhtml function
let html_use_css = 1
