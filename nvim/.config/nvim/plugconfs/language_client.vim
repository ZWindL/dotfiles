" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'cpp': ['ccls', '--log-file=/tmp/cq.log'],
    \ 'c': ['ccls', '--log-file=/tmp/cq.log'],
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'haskell': ['hie', '--lsp'],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'python': ['pyls'],
    \ 'go': ['go-langserver'],
    \ }

" Always draw the sign column
set signcolumn=yes
" Automatically start language servers. default value is 1
"let g:LanguageClient_autoStart = 1
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/home/zwindl/.config/nvim/settings.json'

let g:LanguageClient_hoverPreview = "Auto"

"this option break cquery's completion
let g:LanguageClient_completionPreferTextEdit = 1

"set completefunc=LanguageClient#complete
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

nn <silent> ge :call LanguageClient#explanErrorAtPoint()<CR>
nn <silent> gc :call LanguageClient#textDocument_documentSymbol()<CR>
nn <silent> gh :call LanguageClient#textDocument_hover()<CR>
nn <silent> gd :call LanguageClient#textDocument_definition()<CR>
nn <silent> gr :call LanguageClient#textDocument_references()<CR>
nn <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
nn <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nn <leader>ji :Denite documentSymbol<cr>
nn <leader>jI :Denite workspaceSymbol<cr>
nn <leader>la :call LanguageClient#workspace_symbol({'query':input('workspace/symbol ')})<cr>

function! LspMaybeHover(is_running) abort
  if a:is_running.result && g:LanguageClient_autoHoverAndHighlightStatus
    call LanguageClient_textDocument_hover()
  endif
endfunction

function! LspMaybeHighlight(is_running) abort
  if a:is_running.result && g:LanguageClient_autoHoverAndHighlightStatus
    call LanguageClient#textDocument_documentHighlight()
  endif
endfunction

augroup lsp_aucommands
  au!
  "au CursorHold * call LanguageClient#isAlive(function('LspMaybeHover'))
  au CursorMoved * call LanguageClient#isAlive(function('LspMaybeHover'))
  au CursorMoved * call LanguageClient#isAlive(function('LspMaybeHighlight'))
augroup END

let g:LanguageClient_autoHoverAndHighlightStatus = 0

function! ToggleLspAutoHoverAndHilight() abort
  if g:LanguageClient_autoHoverAndHighlightStatus
    let g:LanguageClient_autoHoverAndHighlightStatus = 0
    call LanguageClient#clearDocumentHighlight()
    echo ""
  else
    let g:LanguageClient_autoHoverAndHighlightStatus = 1
  end
endfunction
nnoremap <silent> ;tg  :call ToggleLspAutoHoverAndHilight()<CR>

""""""""""""""""""" for debug
"let g:LanguageClient_loggingLevel = 'DEBUG'
"let g:LanguageClient_loggingFile = '/tmp/languageclient.log'
"call LanguageClient_setLoggingLevel('DEBUG')

"""""""""""""""""""" for ccls only
" one-level base
nn <silent> xB :call LanguageClient#findLocations({'method':'$ccls/base'})<cr>
" bases of up to 3 levels
nn <silent> xb :call LanguageClient#findLocations({'method':'$ccls/inheritanceHierarchy','flat':v:true,'levels':3,'derived':v:false})<cr>
" derived of up to 3 levels
nn <silent> xd :call LanguageClient#findLocations({'method':'$ccls/inheritanceHierarchy','flat':v:true,'levels':3,'derived':v:true})<cr>
nn <silent> xe :call LanguageClient#findLocations({'method':'$ccls/callers'})<cr>
nn <silent> xm :call LanguageClient#findLocations({'method':'$ccls/memberHierarchy','flat':v:true})<cr>
nn <silent> xt :call LanguageClient#textDocument_typeDefinition()<cr>
nn <silent> xv :call LanguageClient#findLocations({'method':'$ccls/vars'})<cr>
nn <silent> xV :call LanguageClient#findLocations({'method':'$ccls/vars','kind':1})<cr>

nn <silent> xh :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'L'})<cr>
nn <silent> xj :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'D'})<cr>
nn <silent> xk :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'U'})<cr>
nn <silent> xl :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'R'})<cr>
nn xx x
