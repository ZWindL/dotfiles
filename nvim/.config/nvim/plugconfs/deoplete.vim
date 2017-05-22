let g:deoplete#enable_at_startup = 1
"let g:deoplete#omni#functions.ruby = 'rubycomplete#Complete'
"let g:deoplete#omni#functions.javascript = [
"\	'tern#Complete',
"\	'jspc#omni'
"\]

""for deoplete-ternjs
" Use deoplete.
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue'
                \ ]
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

""for deoplete-jedi"
let g:deoplete#sources#jedi#show_docstring = 1

""for phpcd.vim"
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
