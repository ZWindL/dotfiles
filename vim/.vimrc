""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			For Vundle v
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Bundle 'scrooloose/syntastic'
	Plugin 'VundleVim/Vundle.vim'
	"" Rust
	Plugin 'rust-lang/rust.vim'

	"" 前端必备插件 
	Plugin 'mattn/emmet-vim'
		""TypeScript
		Bundle 'leafgarland/typescript-vim'
		"Bundle 'HerringtonDarkholme/yats.vim'

	""C family
	Plugin 'Valloric/YouCompleteMe'
		Plugin 'SirVer/ultisnips'
			Plugin 'honza/vim-snippets'
	Plugin 'jeaye/color_coded'
	Bundle 'rdnetto/YCM-Generator'

	"" NerdTree And NerdTree enhance
	Plugin 'scrooloose/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
	"" TagBar
	Plugin 'majutsushi/tagbar'
	Plugin 'Yggdroot/indentLine'	"代码块可视化插件	只适用于使用空格缩进的文件中
	Plugin 'nathanaelkane/vim-indent-guides'	"代码可视化插件
	"补全 python 其实已经包含于 YCM 中
	"Plugin 'davidhalter/jedi'
	"" 代码地图
	Plugin 'severin-lemaignan/vim-minimap'
	"" ColorSchem
	Plugin 'tomasr/molokai'
	Bundle "altercation/vim-colors-solarized"
	"" Change to xx.h/xx.c type :A
	Plugin 'vim-scripts/a.vim'

	"" SQL
	Plugin 'vim-scripts/dbext.vim'

	"" Web Dev
	Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
	Plugin 'othree/csscomplete.vim'

	"" MarkDown 插件
	"Plugin 'godlygeek/tabular'
	"Plugin 'plasticboy/vim-markdown'

	""为了帅！
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'bling/vim-bufferline'
	Plugin 'terryma/vim-multiple-cursors'
	""彩色括号配对
	Plugin 'kien/rainbow_parentheses.vim'

	"" 文件模糊匹配查找
	Bundle "kien/ctrlp.vim"
	"" 函数模糊匹配查找(,fu)
	Bundle 'tacahiroy/ctrlp-funky'
	" 自动注释 推荐：*****
	Bundle 'scrooloose/nerdcommenter'
	" 括号自动匹配 推荐：****
	Bundle 'jiangmiao/auto-pairs'
	" 更多的文本对象
	Bundle 'wellle/targets.vim'
	" 对周围的文本对象进行操作，例如 cs"' 将周围的双引号替换为单引号
	Bundle 'tpope/vim-surround'
	" 显示 Mark 标记
	Bundle 'kshenoy/vim-signature'
	
"" all of your plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"让 syntastic忽略 python 文件
let g:syntastic_ignore_files=[".*\.py$"]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			YCM OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""syntastic""""""""""""
"let g:syntastic_check_on_open = 1
"let g:syntastic_cpp_include_dirs = ['/usr/include/']
"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_check_header = 1

let g:ycm_filetype_blacklist = {
			\ 'tagbar' : 1,
			\ 'qf' : 1,
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'unite' : 1,
			\ 'text' : 1,
			\ 'vimwiki' : 1,
			\ 'pandoc' : 1,
			\ 'infolog' : 1,
			\ 'mail' : 1,
			\ 'mundo': 1,
			\ 'fzf': 1,
			\ 'ctrlp' : 1
			\}
" ^ Ignore filetypes

"set error or warning signs

let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'

"set error or warning signs
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"whether to show balloons
"let g:syntastic_enable_balloons = 1
" 编写 C/C++ 时切换配置
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=gnu++11 -Wall'
"let g:syntastic_cpp_compiler = 'clang'
"let g:syntastic_cpp_compiler_options = '-std=gnu11 -Wall'
""""""""""""YCM""""""""""""""""""""
"调试选项
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf_c.py'
"编写 C 语言文件时切换配置文件
let g:ycm_collect_identifiers_from_tags_files = 1
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"inoremap <expr> <space>       pumvisible() ? \"\<C-y>" : \"\<space>"	
"按空格键即选中当前项 (反注释时去掉双引号前的转义斜杠)
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0

""在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0


"" 自己开启的部分选项
	"" rust 支持
	let g:ycm_rust_src_path = '/usr/local/src/rust/rustc-1.9.0/src'
	let g:ycm_always_populate_location_list = 1

	""使用 python2/3 作为解释器
	""FIXME:使用 python3 作为解释器，tern 工作异常
	let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
	
	"" 这个选项对于有重载的函数非常有用
	let g:ycm_add_preview_to_completeopt = 1
	"" Python3 的补全支持
"	let g:ycm_python_binary_path='/usr/bin/python3'
"" End "

"" 关于 UltiSnip 的选项
"" 解决 YCM 和 UltiSnips 快捷键冲突
	"" YCM
	let g:ycm_use_ultisnips_completer = 1
	let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
	let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
	""UltiSnips
	let g:UltiSnipsExpandTrigger="<leader><tab>"
	"let g:UltiSnipsJumpForwardTrigger="<c-b>"
	"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"inoremap <c-x><c-k> <c-x><c-k>

"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
nnoremap <leader>jd :YcmCompleter GoTo<CR> 
"" 跳转到定义处
nnoremap <leader>gt :YcmCompleter GetType<CR>
"" 获取对象的类型

"" Emmet Options 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""FIXME:filetype 不能识别 2016-03-22
"" Only enable for html/css
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
"My Own options
""""""""""""""""""""""""""""""""""""""""""""""""""

" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim
syntax on

set grepprg=grep\ -nH\ $*
set grepprg=grep\ -nh\ $*
let g:tex_flavor = "latex"
"for latex

set nocompatible
" 显示相对行号的同时显示当前行号
set nu
set rnu
set nuw=5

" 虚拟行也能使用 jk 来上下移动
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set ci
set ai
"set guifont=Monaco\ 10
set guifont=Fantasque\ Sans\ Mono\ Book\ 11
"set guifont=monofur\ for\ PowerLine\ 11
"" 高亮当前行
if has("gui_running")
	set cul
endif

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

"set tab key to 4 space length
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"定义快捷键的前缀，即<Leader>
"NOTE:当前 leader 距离 Enter 太近
let mapleader = "\\"

" 设置 256 色
set t_Co=256
colorscheme elflord
if has("gui_running")
	"colorscheme desert
	"colorscheme elflord
	"colorscheme koehler
	"colorscheme darkblue
	colorscheme molokai
	"colorscheme twilighted
endif

" vim 自身命令行模式智能补全
set wildmenu

"" 代码折叠
"" 基于缩进或语法进行代码折叠
"" set foldmethod=indent
set foldmethod=syntax
"" 启动 vim 时关闭折叠代码
set nofoldenable

" Don't use Ex mode, use Q for formatting
map Q gq
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
  set autoindent		" always set autoindenting on
endif "has("autocmd")

"以下会导致启动 vim 不出现正常的欢迎信息
"原因不明
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
"if !exists(":DiffOrig")
"  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
"		  \ | wincmd p | diffthis
"endif

"" 兼容 GBK 编码
"set fileencodings=utf-8,gbk


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			其他插件的选项
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" vim-color_coded
let g:color_coded_enabled = 1

"" CtrlP Funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
"narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

"" Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
	"" TabLine
	let g:airline#extensions#tabline#show_tabs = 1
	let g:airline#extensions#tabline#show_tab_type = 1
	let g:airline#extensions#tabline#buffer_idx_mode = 1
	nmap <leader>1 <Plug>AirlineSelectTab1
	nmap <leader>2 <Plug>AirlineSelectTab2
	nmap <leader>3 <Plug>AirlineSelectTab3
	nmap <leader>4 <Plug>AirlineSelectTab4
	nmap <leader>5 <Plug>AirlineSelectTab5
	nmap <leader>6 <Plug>AirlineSelectTab6
	nmap <leader>7 <Plug>AirlineSelectTab7
	nmap <leader>8 <Plug>AirlineSelectTab8
	nmap <leader>9 <Plug>AirlineSelectTab9
	nmap <leader>- <Plug>AirlineSelectPrevTab
	nmap <leader>+ <Plug>AirlineSelectNextTab

	""bufferline
	"let g:bufferline_echo = 1
	"let g:bufferline_active_buffer_left = '['
	"let g:bufferline_active_buffer_right = ']'
	"let g:bufferline_modified = '+'
	"let g:bufferline_show_bufnr = 1
	"let g:bufferline_rotate = 2

"" TagBar
""nmap <F8> :TagbarToggle<CR>
nmap <leader>tag :TagbarToggle<CR>

""NerdTree 相关
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" 代码块可视化
" 利用 vim tab 可视化
set encoding=utf-8
"set listchars=tab:┊\ 
"set list
"set listchars=tab:»-,trail:·,eol:¶,extends:>,precedes:<

" 适用于 tab 和 空格 缩进的插件

" 只适用于空格缩进的缩进可视化插件配置
let g:indentLine_char = '┆'
let g:indentLine_enabled = 0

"" Code mini map
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

" PowerLine
"let g:powerline_pycmd="py3"

"" dbext 插件
"let g:dbext_default_profile_mysql

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						REFS
" http://blog.jobbole.com/103343/
"
