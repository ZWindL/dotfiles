call plug#begin('~/.local/share/nvim/plugged')

	"""""""""""""""
	" 安装函数
	"""""""""""""""
	"function! BuildLangClient(info)
	"    !nvim +UpdateRemotePlugins +qa
	"    if a:info.status == 'installed' || a:info.status == 'updated'
	"        !bash install.sh
    "endfunction
	" run PlugUpgrade to update vim-plug itself
	"" Rust
	Plug 'rust-lang/rust.vim'

	""coc.nvim
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

	"" completer
	"Plug 'autozimu/LanguageClient-neovim', { 
		"\ 'branch': 'next',
		"\ 'do': 'make release',
        "\}
    Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
	
    "Plug 'ncm2/ncm2'
    "Plug 'roxma/nvim-yarp'
    "Plug 'ncm2/ncm2-github'
    "Plug 'ncm2/ncm2-path'
    "Plug 'ncm2/ncm2-bufword'
    "Plug 'ncm2/ncm2-ultisnips'
    "Plug 'ncm2/ncm2-rst-subscope'
    "Plug 'filipekiss/ncm2-look.vim'

    Plug 'tpope/vim-fugitive'

    Plug 'wakatime/vim-wakatime'

	"highlighting
	"Plug 'pierremoreau/chromatica.nvim', {
                "\ 'branch' : 'allow_relative_isystem',
                "\}

	"" Ocaml completer
	Plug 'reasonml-editor/vim-reason-plus'

	"" Showing function signature and inline doc.
	Plug 'Shougo/echodoc.vim'
	Plug 'Shougo/context_filetype.vim'


	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	"
    ""PHP
    "Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
    ""vim
    "Plug 'Shougo/neco-vim'

	"" 前端必备插件 
	Plug 'mattn/emmet-vim'
		""TypeScript
		"hilight
		Plug 'leafgarland/typescript-vim'
		"Plug 'HerringtonDarkholme/yats.vim'

	""Assembly Hilight
	Plug 'Shirk/vim-gas'

	"" NerdTree And NerdTree enhance
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	"" TagBar
	Plug 'majutsushi/tagbar'
	"Plug 'Yggdroot/indentLine'	"代码块可视化插件	只适用于使用空格缩进的文件中
	Plug 'nathanaelkane/vim-indent-guides'	"代码可视化插件
	"" ColorSchem
	Plug 'tomasr/molokai'
	Plug 'altercation/vim-colors-solarized'

	Plug 'chrisbra/csv.vim'

    Plug 'Shougo/denite.nvim'

	"" Web Dev
	"Plug 'https://github.com/gorodinskiy/vim-coloresque.git'

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
	" 自动添加 licenses 信息到当前文件
	Plug 'antoyo/vim-licenses'
	" 撤销操作树 Undotree
	Plug 'simnalamburt/vim-mundo'
	""快速跳转
	Plug 'easymotion/vim-easymotion'
	" 主题配色方案
	Plug 'flazz/vim-colorschemes'

	""显示复制内容
	Plug 'machakann/vim-highlightedyank'	

	Plug 'chrisbra/SudoEdit.vim'

	""toml support
    Plug 'cespare/vim-toml'
    ""平滑滚动
    Plug 'yuttie/comfortable-motion.vim'

    Plug 'mcchrish/nnn.vim'

    Plug 'dhruvasagar/vim-table-mode'
    Plug 'gyim/vim-boxdraw'
call plug#end()
"未来会用到的
"https://github.com/rafaelndev/deoplete-laravel-plugin
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件的选项
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"source ~/.config/nvim/plugconfs/deoplete.vim
source ~/.config/nvim/plugconfs/airline.vim
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
"source ~/.config/nvim/plugconfs/language_client.vim
"source ~/.config/nvim/plugconfs/ncm2.vim
"source ~/.config/nvim/plugconfs/chromatica.vim
source ~/.config/nvim/plugconfs/echodoc.vim
source ~/.config/nvim/plugconfs/rainbow.vim
source ~/.config/nvim/plugconfs/table.vim
source ~/.config/nvim/plugconfs/coc.vim
