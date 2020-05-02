" To use these regexes type :C-R=<Tab> or /C-R=<Tab> or :%s/C-R=<Tab>
" and vim will show all available options
" convert require to import
let requireImport = "\\v(const|var|let)\\s*(\\S*|\\{[^\\}]*\\})\\s*\\=\\s*require\\('?\"?([^'\"]*)'?\"?\\).*/import \\2 from '\\3';"

" convert function to arrow function
let functionArrow = "\\vfunction\\s*(\\S*)\\s*(\\([^)]*\\))/const \\1 = \\2 =>"

let markdownLinks = "\\%V\\v(.*)/[\\1](\\1)"
