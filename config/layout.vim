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

nmap <Leader>1 :call Layout(1)<CR>
nmap <Leader>2 :call Layout(2)<CR>
nmap <Leader>3 :call Layout(3)<CR>
