"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin to copy matches (search hits which may be multiline).
" Version 2012-05-03 from http://vim.wikia.com/wiki/VimTip478
"
" :CopyMatches      copy matches to clipboard (each match has newline added)
" :CopyMatches x    copy matches to register x
" :CopyMatches X    append matches to register x
" :CopyMatches -    display matches in a scratch buffer (does not copy)
" :CopyMatches pat  (after any of above options) use 'pat' as search pattern
" :CopyMatches!     (with any of above options) insert line numbers
" Same options work with the :CopyLines command (which copies whole lines).

" Jump to first scratch window visible in current tab, or create it.
" This is useful to accumulate results from successive operations.
" Global function that can be called from other scripts.
function! GoScratch()
    let done = 0
    for i in range(1, winnr('$'))
        execute i . 'wincmd w'
        if &buftype == 'nofile'
            let done = 1
            break
        endif
    endfor
    if !done
        new
        setlocal buftype=nofile bufhidden=hide noswapfile
    endif
endfunction

" Append match, with line number as prefix if wanted.
function! s:Matcher(hits, match, linenums, subline)
    if !empty(a:match)
        let prefix = a:linenums ? printf('%3d  ', a:subline) : ''
        call add(a:hits, prefix . a:match)
    endif
    return a:match
endfunction

" Append line numbers for lines in match to given list.
function! s:MatchLineNums(numlist, match)
    let newlinecount = len(substitute(a:match, '\n\@!.', '', 'g'))
    if a:match =~ "\n$"
        let newlinecount -= 1  " do not copy next line after newline
    endif
    call extend(a:numlist, range(line('.'), line('.') + newlinecount))
    return a:match
endfunction

" Return list of matches for given pattern in given range.
" If 'wholelines' is 1, whole lines containing a match are returned.
" This works with multiline matches.
" Work on a copy of buffer so unforeseen problems don't change it.
" Global function that can be called from other scripts.
function! GetMatches(line1, line2, pattern, wholelines, linenums)
    let savelz = &lazyredraw
    set lazyredraw
    let lines = getline(1, line('$'))
    new
    setlocal buftype=nofile bufhidden=delete noswapfile
    silent put =lines
    1d
    let hits = []
    let sub = a:line1 . ',' . a:line2 . 's/' . escape(a:pattern, '/')
    if a:wholelines
        let numlist = []  " numbers of lines containing a match
        let rep = '/\=s:MatchLineNums(numlist, submatch(0))/e'
    else
        let rep = '/\=s:Matcher(hits, submatch(0), a:linenums, line("."))/e'
    endif
    silent execute sub . rep . (&gdefault ? '' : 'g')
    close
    if a:wholelines
        let last = 0  " number of last copied line, to skip duplicates
        for lnum in numlist
            if lnum > last
                let last = lnum
                let prefix = a:linenums ? printf('%3d  ', lnum) : ''
                call add(hits, prefix . getline(lnum))
            endif
        endfor
    endif
    let &lazyredraw = savelz
    return hits
endfunction

" Copy search matches to a register or a scratch buffer.
" If 'wholelines' is 1, whole lines containing a match are returned.
" Works with multiline matches. Works with a range (default is whole file).
" Search pattern is given in argument, or is the last-used search pattern.
function! s:CopyMatches(bang, line1, line2, args, wholelines)
    let l = matchlist(a:args, '^\%(\([a-zA-Z"*+-]\)\%($\|\s\+\)\)\?\(.*\)')
    let reg = empty(l[1]) ? '+' : l[1]
    let pattern = empty(l[2]) ? @/ : l[2]
    let hits = GetMatches(a:line1, a:line2, pattern, a:wholelines, a:bang)
    let msg = 'No non-empty matches'
    if !empty(hits)
        if reg == '-'
            call GoScratch()
            normal! G0m'
            silent put =hits
            " Jump to first line of hits and scroll to middle.
            ''+1normal! zz
        else
            execute 'let @' . reg . ' = join(hits, "\n") . "\n"'
        endif
        let msg = 'Number of matches: ' . len(hits)
    endif
    redraw  " so message is seen
    echo msg
endfunction
command! -bang -nargs=? -range=% CopyMatches call s:CopyMatches(<bang>0, <line1>, <line2>, <q-args>, 0)
command! -bang -nargs=? -range=% CopyLines call s:CopyMatches(<bang>0, <line1>, <line2>, <q-args>, 1)

function! BufferDelete()
    "if &modified
    "    echohl ErrorMsg
        "echomsg "No write since last change. Not closing buffer."
    "    echohl NONE
    "else
        let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

        if s:total_nr_buffers == 1
            bdelete!
            "echo "Buffer deleted. Created new buffer."
        else
            bprevious!
            bdelete! #
            "echo "Buffer deleted."
        endif
    "endif
endfunction

function! BufferIsEmpty()
    if line('$') == 1 && getline(1) == '' 
        return 1
    else
        return 0
    endif
endfunction

let s:cur_split = "2h"

function! Layout(num)
    "making only one visible

    if !exists("b:NERDTreeType") || ( exists("b:NERDTreeType") && b:NERDTreeType != "primary" )
        on!

        let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

        "b:NERDTreeType != "primary"
        if a:num==2
            if s:cur_split=="2v"
                sp
                wincmd w
                let s:cur_split="2h"
            elseif s:cur_split=="2h"
                "vert belowright sb
                vsplit
                wincmd w
                let s:cur_split="2v"
            endif

            bnext
            wincmd t
        elseif a:num==3
            "vert belowright sb
            vsplit
            wincmd w
            bnext
            bnext
            sp
            bprev
            wincmd t
            let s:cur_split="2h"
        else
            let s:cur_split="2h"
        endif

    endif

endfunction

" taken from https://github.com/carlhuda/janus
" Utility functions to create file commands
function! s:CommandCabbr(abbreviation, expansion)
    execute 'cabbrev ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
endfunction

function! s:FileCommand(name, ...)
    if exists("a:1")
        let funcname = a:1
    else
        let funcname = a:name
    endif

    execute 'command! -nargs=* -complete=file ' . a:name . ' :call ' . funcname . '(<f-args>)'
endfunction

function! s:DefineCommand(name, destination)
    call s:FileCommand(a:destination)
    call s:CommandCabbr(a:name, a:destination)
endfunction

" grep
"command! -nargs=+ Grep execute 'silent grep! -snr -m 100 <args>' | copen 20

" Public NERDTree-aware versions of builtin functions
function! CD(...)
    if exists("a:1")
        execute "cd ".fnameescape(a:1)
    else
        execute "cd"
    endif
    NERDTree
endfunction

" Define the NERDTree-aware aliases
call s:DefineCommand("cd", "CD")

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
