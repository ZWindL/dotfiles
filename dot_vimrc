source ~/.vim/plugs.vim
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
"let mapleader = " "

set noshowmode

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
"set guifont=Fantasque\ Sans\ Mono\ Book\ 10
set guifont=Fira\ Code\ 10
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
"set noexpandtab
set expandtab

"阻止 vim 自动对带有空格分隔单词的行自动换行
set formatoptions-=t

" 设置 256 色
set t_Co=256
"colorscheme elflord
if has("gui_running")
    colorscheme rmnv
    "colorscheme Dev_Delight
    "colorscheme PapayaWhip
	"colorscheme desert
	"colorscheme elflord
	"colorscheme koehler
	"colorscheme darkblue
	"colorscheme molokai
	"colorscheme solarized
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

" 打开 quickfix 窗口快捷键
nmap <F6> :cw<CR>
nmap <F6>j :cn<CR>
nmap <F6>k :cp<CR>
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
" 加密设置 vim -x /path/to/your/file

"" 命令补全的时候忽略大小写
set ignorecase
set smartcase

""自动关闭输入法
autocmd InsertLeave * silent! !fcitx5-remote -c

"" histogram-based diff
if has('nvim-0.3.2') || has("patch-8.1.0360")
    set diffopt=filler,internal,algorithm:histogram,indent-heuristic
endif

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
