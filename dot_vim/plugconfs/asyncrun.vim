augroup QuickfixStatus
	au! BufWinEnter quickfix setlocal
		\ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%v%)\ %P
augroup END
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
