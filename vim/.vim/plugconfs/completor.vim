let g:completor_python_binary = '/usr/lib/python3.6/site-packages/jedi'
let g:completor_racer_binary = '/usr/bin/racer'
let g:completor_node_binary = '/usr/bin/node'
let g:completor_clang_binary = '/usr/bin/clang'
"To pass extra clang arguments, you can create a file named .clang_complete under the project root directory or any parent directories. Every argument should be in a single line in the file. This is an example file:
"-std=c++11
"-I/Users/maralla/Workspace/src/dji-sdk/Onboard-SDK/lib/inc
"-I/Users/maralla/Workspace/src/dji-sdk/Onboard-SDK/sample/Linux/inc

"let g:completor_{filetype}_omni_trigger = '<python regex>'
"For example to use css omnifunc:
let g:completor_css_omni_trigger = '([\w-]+|@[\w-]*|[\w-]+:\s*[\w-]*)$'
