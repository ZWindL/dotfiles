""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			For Vim-plug 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

	"""""""""""""""
	" 安装函数
	"""""""""""""""
	function! BuildColorCoded(info)
		if a:info.status == 'installed' || a:info.status == 'updated' || a:info.force
			!mkdir build
			!cd build && cmake .. && make && make install
		endif
	endfunction

	" run PlugUpgrade to update vim-plug itself
	"" Rust
	Plug 'rust-lang/rust.vim'

	"" completer
	Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'roxma/nvim-completion-manager'

	"" Showing function signature and inline doc.
	Plug 'Shougo/echodoc.vim'

	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    ""typescript
    Plug 'mhartington/nvim-typescript'
    ""javascript
    Plug 'carlitux/deoplete-ternjs'
    ""python
    Plug 'zchee/deoplete-jedi'
    ""rust
    "Plug 'racer-rust/vim-racer'
    ""PHP
    Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
    ""vim
    Plug 'Shougo/neco-vim'

	"" 前端必备插件 
	Plug 'mattn/emmet-vim'
		""TypeScript
		"hilight
		Plug 'leafgarland/typescript-vim'
		"Plug 'HerringtonDarkholme/yats.vim'

	"" C++ language
	"completion
	"Plug 'zchee/deoplete-clang'
	"Plug 'Rip-Rip/clang_complete'
	"highlighting
	Plug 'arakashic/chromatica.nvim'

	
	""lint tool
	""Plug 'scrooloose/syntastic'
	Plug 'w0rp/ale'

	""Assembly Hilight
	Plug 'Shirk/vim-gas'

	"" NerdTree And NerdTree enhance
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	"" TagBar
	Plug 'majutsushi/tagbar'
	"Plug 'Yggdroot/indentLine'	"代码块可视化插件	只适用于使用空格缩进的文件中
	"Plug 'nathanaelkane/vim-indent-guides'	"代码可视化插件
	"" ColorSchem
	Plug 'tomasr/molokai'
	Plug 'altercation/vim-colors-solarized'

	"" Web Dev
	"Plug 'https://github.com/gorodinskiy/vim-coloresque.git'
	"Plug 'othree/csscomplete.vim'

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
	" 自动添加 licenses 信息到当前文件
	Plug 'antoyo/vim-licenses'
	" 撤销操作树 Undotree
	Plug 'simnalamburt/vim-mundo'
	""快速跳转
	Plug 'easymotion/vim-easymotion'
	" 主题配色方案
	Plug 'flazz/vim-colorschemes'

	"个人笔记管理
	"Plug 'vimwiki/vimwiki'
	"Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'
	
	""显示复制内容
	Plug 'machakann/vim-highlightedyank'	

	""toml support
    Plug 'cespare/vim-toml'
    ""平滑滚动
    Plug 'yuttie/comfortable-motion.vim'
call plug#end()
"未来会用到的
"https://github.com/rafaelndev/deoplete-laravel-plugin
"https://github.com/zchee/deoplete-zsh
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件的选项
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.config/nvim/plugconfs/deoplete.vim
"source ~/.config/nvim/plugconfs/vim-racer.vim
source ~/.config/nvim/plugconfs/airline.vim
source ~/.config/nvim/plugconfs/ale.vim
source ~/.config/nvim/plugconfs/ctrlp.vim
source ~/.config/nvim/plugconfs/easymotion.vim
source ~/.config/nvim/plugconfs/emmet.vim
source ~/.config/nvim/plugconfs/indentline.vim
source ~/.config/nvim/plugconfs/licenses.vim
source ~/.config/nvim/plugconfs/nerdtree.vim
source ~/.config/nvim/plugconfs/syntastic.vim
source ~/.config/nvim/plugconfs/tagbar.vim
source ~/.config/nvim/plugconfs/typescript_vim.vim
source ~/.config/nvim/plugconfs/ultisnips.vim
source ~/.config/nvim/plugconfs/undotree.vim
source ~/.config/nvim/plugconfs/vim_gas.vim
source ~/.config/nvim/plugconfs/highlightedyank.vim
source ~/.config/nvim/plugconfs/language_client.vim
source ~/.config/nvim/plugconfs/chromatica.vim

""""""""""""""""""""""""""""""""""""""""""""""""""
"My Own options
""""""""""""""""""""""""""""""""""""""""""""""""""
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

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

"set tab key to 4 space length
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set noexpandtab
set expandtab

""打开 terninal vim mode 的快捷键
tnoremap <C-A> <C-\><C-N>

" 设置 256 色
set t_Co=256
" 主题颜色
colorscheme elflord

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

"" 兼容 GBK 编码
set fileencodings=utf-8,gbk

" 打开 quickfix 窗口快捷键
nmap <F6> :cw<CR>
nmap <F6>j :cn<CR>
nmap <F6>k :cp<CR>

"" command line completion ignore case
set ignorecase
set smartcase
