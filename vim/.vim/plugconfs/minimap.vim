"" https://github.com/severin-lemaignan/vim-minimap
"将 ls 设置为 1 是为了让 Minimap 能够打开
nnoremap <leader>mm call OpenMiniMap()<CR>
let g:minimap_highlight='Visual'
nnoremap <leader>mc :MinimapClose | set ls=2
func! OpenMiniMap()
	set ls=1
	ex ":Minimap"
endfunc
"nnoremap <leader>mm :Minimap<CR>
"nnoremap <leader>mc :MinimapClose<CR>
