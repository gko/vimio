let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'tslint'],
\  'jsx': ['prettier', 'eslint'],
\  'python': ['autopep8', 'yapf'],
\  'c++': ['cppcheck', 'clangcheck', 'clangtidy', 'cquery']
\}

let g:ale_linters = {
\  'javascript': ['eslint'],
\  'jsx': ['stylelint', 'eslint'],
\  'typescript': ['tslint'],
\  'python': ['flake8', 'pylint']
\}
