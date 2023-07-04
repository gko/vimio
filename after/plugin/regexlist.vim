" To use these regexes type :C-R=<Tab> or /C-R=<Tab> or :%s/C-R=<Tab>
" and vim will show all available options
" convert require to import
let require2Import = "\\v(const|var|let)\\s*(\\S*|\\{[^\\}]*\\})\\s*\\=\\s*require\\('?\"?([^'\"]*)'?\"?\\).*/import \\2 from '\\3';"
let import2Require = "\\vimport (.*) from '(.*)';?/const \\1 = require('\\2');"

" let jiraTicket (\([A-Z]+\)\(-\d+\))/[\1\2](https:\/\/JIRA_HOSTING\/browse\/\1\2)

" convert function to arrow function
let function2Arrow = "\\vfunction\\s*(\\S*)\\s*(\\([^)]*\\)) (.*)/const \\1 = \\2 => \\3"
let arrow2Function = "\\v(const|let|var)\\s*(\\w+)\\s*\\=\\s*\\((.*)\\)\\s*\\=\\>\\s*(.*)/function \\2(\\3) \\4"

let markdownLinks = "\\%V\\v(.*)/[\\1](\\1)"

let kebab2pascal = "\\%V\\v(^|-)([a-z])/\\U\\2"
let kebab2camel = "\\%V\\v-([a-z])/\\U\\1"
let snake2camel = "\\%V\\v_([a-z])/\\U\\1"
let snake2kebab = "\\%V\\v_([a-z])/-\\U\\1"
let snake2pascal = "\\%V\\v(^|_)([a-z])/\\U\\2"
let camel2kebab = "\\%V\\C\\v([a-z0-9])([A-Z])/\\1-\\L\\2"
let camel2snake = "\\%V\\C\\v([a-z0-9])([A-Z])/\\1_\\L\\2"
let pascal2kebab = "\\%V\\v([A-Z])/-\\L\\1"
let pascal2snake = "\\%V\\v([A-Z])/_\\L\\1"
