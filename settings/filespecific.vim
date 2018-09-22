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
autocmd BufReadPost *.mheg set syntax=mheg
autocmd BufReadPost *.mhg set syntax=mheg

autocmd BufNewFile *.py 0r $VIMHOME/templates/template.py
autocmd BufNewFile *.xml 0r $VIMHOME/templates/template.xml
autocmd BufNewFile *.xsl 0r $VIMHOME/templates/template.xsl
autocmd BufNewFile *.jade 0r $VIMHOME/templates/template.jade
autocmd BufNewFile *.html 0r $VIMHOME/templates/template.html
autocmd BufNewFile package.json 0r $VIMHOME/templates/package.json

" Fix files with prettier, and then ESLint.

" Equivalent to the above.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\		'javascript': ['eslint'],
\		'typescript': ['tslint']
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\		'typescript': ['tslint']
\}

"augroup fmt
	"autocmd!
	"autocmd BufWritePre * Neoformat
"augroup END
"autocmd BufWritePre *.js exe "%retab!"
" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"

let g:neoformat_basic_format_retab = 0
let g:neoformat_basic_format_trim = 1
" + &ts
let g:neoformat_javascript_prettier = {
				\ 'exe': 'prettier',
				\ 'args': ['--stdin', '--single-quote', '--tab-width 4'],
				\ 'stdin': 1,
				\ }


"let g:node_usejscomplete = 1
"let g:jscomplete_use = ['dom', 'moz', 'xpcom', 'es6th']
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
autocmd FileType java setlocal omnifunc=javacomplete#Complete

set history=1000 " store lots of :cmdline history

"for TOhtml function
let html_use_css = 1
