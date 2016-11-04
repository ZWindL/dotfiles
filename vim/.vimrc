""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			For Vim-plug 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

	"""""""""""""""
	" 安装函数
	"""""""""""""""
	function! BuildYCM(info)
		if a:info.status == 'installed' || a:info.force || a:info.updated
			!./install.py --all
		endif
	endfunction

	function! BuildColorCoded(info)
		if a:info.status == 'installed' || a:info.force || a:info.updated
			!mkdir build
			!cd build && cmake .. && make && make install
		endif
	endfunction

	" run PlugUpgrade to update vim-plug itself
 
	"" Rust
	Plug 'rust-lang/rust.vim'

	"" 前端必备插件 
	Plug 'mattn/emmet-vim'
		""TypeScript
		Plug 'leafgarland/typescript-vim'
		"Plug 'HerringtonDarkholme/yats.vim'

	""C family
	Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
		Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	Plug 'jeaye/color_coded', { 'do': function('BuildColorCoded') }
	"Plug 'rdnetto/YCM-Generator'
	
	""lint tool
	""Plug 'scrooloose/syntastic'
	"Plug 'w0rp/ale'

	""Assembly Hilight
	Plug 'Shirk/vim-gas'

	"" NerdTree And NerdTree enhance
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	"" TagBar
	Plug 'majutsushi/tagbar'
	Plug 'Yggdroot/indentLine'	"代码块可视化插件	只适用于使用空格缩进的文件中
	Plug 'nathanaelkane/vim-indent-guides'	"代码可视化插件
	"补全 python 其实已经包含于 YCM 中
	"Plug 'davidhalter/jedi'
	"" 代码地图
	Plug 'severin-lemaignan/vim-minimap'
	"" ColorSchem
	Plug 'tomasr/molokai'
	Plug 'altercation/vim-colors-solarized'
	"" Change to xx.h/xx.c type :A
	Plug 'vim-scripts/a.vim'

	"" SQL
	Plug 'vim-scripts/dbext.vim'

	"" Web Dev
	Plug 'https://github.com/gorodinskiy/vim-coloresque.git'
	Plug 'othree/csscomplete.vim'

	"" MarkDown 插件
	"Plug 'godlygeek/tabular'
	"Plug 'plasticboy/vim-markdown'

	""为了帅！
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	"Plug 'bling/vim-bufferline'
	Plug 'terryma/vim-multiple-cursors'
	""彩色括号配对
	Plug 'kien/rainbow_parentheses.vim'

	"" 文件模糊匹配查找
	Plug 'kien/ctrlp.vim'
	"" 函数模糊匹配查找(,fu)
	Plug 'tacahiroy/ctrlp-funky'
	" 自动注释 推荐：*****
	Plug 'scrooloose/nerdcommenter'
	" 括号自动匹配 推荐：****
	Plug 'jiangmiao/auto-pairs'
	" 更多的文本对象
	Plug 'wellle/targets.vim'
	" 对周围的文本对象进行操作，例如 cs"' 将周围的双引号替换为单引号
	Plug 'tpope/vim-surround'
	" 显示 Mark 标记
	Plug 'kshenoy/vim-signature'
	" Vim 8.0+ 异步执行 command
	Plug 'skywind3000/asyncrun.vim'
	" 自动添加 licenses 信息到当前文件
	Plug 'antoyo/vim-licenses'
	" 撤销操作树 Undotree
	Plug 'simnalamburt/vim-mundo'
	"中文输入法
	Plug 'idxuanjun/bx_vimim_dict'
	
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件的选项
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/plugconfs/ycm.vim
source ~/.vim/plugconfs/syntastic.vim
source ~/.vim/plugconfs/emmet.vim
source ~/.vim/plugconfs/color_coded.vim
source ~/.vim/plugconfs/ctrlp.vim
source ~/.vim/plugconfs/airline.vim
source ~/.vim/plugconfs/tagbar.vim
source ~/.vim/plugconfs/nerdtree.vim
source ~/.vim/plugconfs/indentline.vim
source ~/.vim/plugconfs/minimap.vim
source ~/.vim/plugconfs/licenses.vim
source ~/.vim/plugconfs/undotree.vim
source ~/.vim/plugconfs/vim_gas.vim
source ~/.vim/plugconfs/typescript_vim.vim
"source ~/.vim/plugconfs/ale.vim

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

set so=5

"定义快捷键的前缀，即<Leader>
"NOTE:当前 leader 距离 Enter 太近
let mapleader = "\\"

set nocompatible
" 显示相对行号的同时显示当前行号
set nu
set rnu
"set nuw=5

""折行缩进
set breakindent

" 虚拟行也能使用 jk 来上下移动
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set ci
set ai
"set guifont=Monaco\ 10
set guifont=Fantasque\ Sans\ Mono\ Book\ 10
"set guifont=monofur\ for\ PowerLine\ 10
""隐藏工具栏
set guioptions-=T
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
set fileencodings=utf-8,gbk

" 代码块可视化
" 利用 vim tab 可视化
"set encoding=utf-8
"set listchars=tab:┊\ 
"set list
"set listchars=tab:»-,trail:·,eol:¶,extends:>,precedes:<

" PowerLine
"let g:powerline_pycmd="py3"

"" dbext 插件
"let g:dbext_default_profile_mysql

" http://blog.jobbole.com/103343/
"
