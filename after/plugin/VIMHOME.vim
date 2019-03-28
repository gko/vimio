" The :p modifier makes the pathname absolute and the :h suffix drops the last pathname component (i.e. the filename in this case).
let $VIMHOME=expand('<sfile>:p:h:h:h')
