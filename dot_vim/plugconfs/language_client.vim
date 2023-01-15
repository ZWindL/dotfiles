" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['/opt/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
    \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'haskell': ['hie', '--lsp'],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'python': ['pyls'],
    \ 'go': ['go-langserver'],
    \ }

" Always draw the sign column
set signcolumn=yes
" Automatically start language servers.
let g:LanguageClient_autoStart = 1
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/home/zwindl/.config/nvim/settings.json'

"this option break cquery's completion
"let g:LanguageClient_completionPreferTextEdit = 1

set completefunc=LanguageClient#complete
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

nn <silent> gc :call LanguageClient#textDocument_documentSymbol()<CR>
nn <silent> gh :call LanguageClient#textDocument_hover()<CR>
nn <silent> gd :call LanguageClient#textDocument_definition()<CR>
nn <silent> gr :call LanguageClient#textDocument_references()<CR>
nn <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
nn <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nn <leader>ji :Denite documentSymbol<cr>
nn <leader>jI :Denite workspaceSymbol<cr>
nn <leader>la :call LanguageClient#workspace_symbol({'query':input('workspace/symbol ')})<cr>

"Send textDocument/hover when cursor moves.
augroup LanguageClient_config
  au!
  au BufEnter * let b:Plugin_LanguageClient_started = 0
  au User LanguageClientStarted setl signcolumn=yes
  au User LanguageClientStarted let b:Plugin_LanguageClient_started = 1
  au User LanguageClientStopped setl signcolumn=auto
  au User LanguageClientStopped let b:Plugin_LanguageClient_stopped = 0
  au CursorMoved * if b:Plugin_LanguageClient_started | call LanguageClient_textDocument_hover() | endif
augroup END
"let g:LanguageClient_loggingLevel = 'DEBUG'
