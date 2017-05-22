let g:ale_sign_error = '!'
let g:ale_sign_warning = '$'

set statusline=%{ALEGetStatusLine()}
let g:ale_statusline_format = ['! %d', '$ %d', '⬥ ok']
