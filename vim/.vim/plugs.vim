call plug#begin('~/.local/share/vim/plugged')

	"""""""""""""""
	" 安装函数
	"""""""""""""""
	function! BuildYCM(info)
		if a:info.status == 'installed' || a:info.status == 'updated' || a:info.force
			!./install.py --all
		endif
	endfunction

	function! BuildColorCoded(info)
		if a:info.status == 'installed' || a:info.status == 'updated' || a:info.force
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
		"highlight
		Plug 'leafgarland/typescript-vim'
		"Plug 'HerringtonDarkholme/yats.vim'

	""Lang server
	Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    "Plug 'junegunn/fzf'
    Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }

    Plug 'wakatime/vim-wakatime'

	""C family
	"Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
	"Plug 'Valloric/YouCompleteMe'
		"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	"Plug 'jeaye/color_coded', { 'do': function('BuildColorCoded') }
	Plug 'jeaye/color_coded'

	""Assembly Hilight
	Plug 'Shirk/vim-gas'

	"" NerdTree And NerdTree enhance
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	"" TagBar
	Plug 'majutsushi/tagbar'
	"Plug 'Yggdroot/indentLine'	"代码块可视化插件	只适用于使用空格缩进的文件中
	Plug 'nathanaelkane/vim-indent-guides'	"代码可视化插件
	"补全 python 其实已经包含于 YCM 中
	"Plug 'davidhalter/jedi'
	"" 代码地图
	Plug 'severin-lemaignan/vim-minimap'
	"" ColorSchem
	Plug 'tomasr/molokai'
	Plug 'altercation/vim-colors-solarized'
	Plug 'rmnv/vim-simple-colors'
	Plug 'flazz/vim-colorschemes'
	"" Change to xx.h/xx.c type :A
	Plug 'vim-scripts/a.vim'

    Plug 'tpope/vim-fugitive'

	"" SQL
	Plug 'vim-scripts/dbext.vim'

	"" Web Dev
	Plug 'https://github.com/gorodinskiy/vim-coloresque.git'
	Plug 'othree/csscomplete.vim'

	"" MarkDown 插件
	"Plug 'godlygeek/tabular'
	"Plug 'plasticboy/vim-markdown'
	
	Plug 'chrisbra/csv.vim'

	Plug 'Shougo/denite.nvim'

	""为了帅！
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	"Plug 'bling/vim-bufferline'
	Plug 'terryma/vim-multiple-cursors'
	""彩色括号配对
	Plug 'luochen1990/rainbow'

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
	""快速跳转
	Plug 'easymotion/vim-easymotion'
	"中文输入法
	" 使用过程中会出现莫名奇妙的 bug 暂停使用一段时间
	" 已经确定括号自动配对失效是因为这个插件
	"Plug 'idxuanjun/bx_vimim_dict'

	"交互执行命令
	Plug 'Shougo/vimproc.vim', {'do' : 'make'}

	"个人笔记管理
	Plug 'vimwiki/vimwiki'
	Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'

	Plug 'chrisbra/SudoEdit.vim'

	""显示复制内容
	Plug 'machakann/vim-highlightedyank'	
	""toml support
	Plug 'cespare/vim-toml'
	""平滑滚动
	Plug 'yuttie/comfortable-motion.vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件的选项
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/plugconfs/vim-lsp.vim
source ~/.vim/plugconfs/asyncomplete.vim
"source ~/.vim/plugconfs/deoplete.vim
"source ~/.vim/plugconfs/language_client.vim
source ~/.vim/plugconfs/ultisnips.vim
source ~/.vim/plugconfs/emmet.vim
source ~/.vim/plugconfs/color_coded.vim
source ~/.vim/plugconfs/ctrlp.vim
source ~/.vim/plugconfs/airline.vim
source ~/.vim/plugconfs/tagbar.vim
source ~/.vim/plugconfs/nerdtree.vim
"source ~/.vim/plugconfs/indentline.vim
source ~/.vim/plugconfs/minimap.vim
source ~/.vim/plugconfs/licenses.vim
source ~/.vim/plugconfs/undotree.vim
source ~/.vim/plugconfs/vim_gas.vim
source ~/.vim/plugconfs/typescript_vim.vim
source ~/.vim/plugconfs/asyncrun.vim
source ~/.vim/plugconfs/vimwiki.vim
source ~/.vim/plugconfs/vimnotes.vim
source ~/.vim/plugconfs/easymotion.vim
"source ~/.vim/plugconfs/powerline.vim
source ~/.vim/plugconfs/highlightedyank.vim
"source ~/.vim/plugconfs/echodoc.vim
source ~/.vim/plugconfs/rainbow.vim
