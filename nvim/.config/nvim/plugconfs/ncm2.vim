autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
