let g:coc_global_extensions = [
            \'coc-json',
            \'coc-python',
            \'coc-html',
            \'coc-emoji',
            \'coc-ccls',
            \'coc-tsserver',
            \'coc-eslint',
            \'coc-yaml',
            \'coc-tslint-plugin',
            \'coc-css',
            \'coc-highlight',
            \]

inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
inoremap <silent><expr> <c-space> coc#refresh()

" if you want to disable auto detect, comment out those two lines
"let g:airline#extensions#disable_rtp_load = 1
"let g:airline_extensions = ['branch', 'hunks', 'coc']

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let airline#extensions#coc#error_symbol = 'Error:'
let airline#extensions#coc#error_symbol = 'Warning:'

" highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

hi default CocHighlightText  guibg=#111111 ctermbg=223

vmap cf         <Plug>(coc-format-selected)
nmap cf         <Plug>(coc-format)
nmap gd         <Plug>(coc-definition)
nmap gf         <Plug>(coc-declaration) 
nmap gi         <Plug>(coc-implementation)
nmap gt         <Plug>(coc-type-definition)
nmap <F2>       <Plug>(coc-rename)
nmap cl         <Plug>(coc-codelens-action)
nmap <F3>       <Plug>(coc-fix-current)
nmap gh         :call CocActionAsync('doHover')<CR>
