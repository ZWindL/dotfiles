vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
	use 'vifm/vifm.vim'
	use 'ryanoasis/vim-devicons'
	-- Rust
	use 'rust-lang/rust.vim'

    use 'neovim/nvim-lspconfig'
	--coc.nvim
    use {'neoclide/coc.nvim', run = 'yarn install'}
    use 'jackguo380/vim-lsp-cxx-highlight'
    --  Function, method, variable, outlines
    use 'liuchengxu/vista.vim'
    -- completer
	-- use 'autozimu/LanguageClient-neovim', { 
		-- \ 'branch': 'next',
		-- \ 'do': 'make release',
        -- \}
    use {'lotabout/skim', run = './install'}
	
    -- use 'ncm2/ncm2'
    -- use 'roxma/nvim-yarp'
    -- use 'ncm2/ncm2-github'
    -- use 'ncm2/ncm2-path'
    -- use 'ncm2/ncm2-bufword'
    -- use 'ncm2/ncm2-ultisnips'
    -- use 'ncm2/ncm2-rst-subscope'
    -- use 'filipekiss/ncm2-look.vim'

    use 'tpope/vim-fugitive'

    use 'wakatime/vim-wakatime'

	-- highlighting
	-- use 'pierremoreau/chromatica.nvim', {
                -- \ 'branch' : 'allow_relative_isystem',
                -- \}

	-- Ocaml completer
	use 'reasonml-editor/vim-reason-plus'

	-- Showing function signature and inline doc.
	use 'Shougo/echodoc.vim'
	use 'Shougo/context_filetype.vim'


	use {'SirVer/ultisnips', requires = {{'honza/vim-snippets'}}}
	-- 
    --PHP
    -- use 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
    --vim
    -- use 'Shougo/neco-vim'

	-- 前端必备插件 
	use 'mattn/emmet-vim'
		--TypeScript
		-- hilight
    use 'leafgarland/typescript-vim'
		-- use 'HerringtonDarkholme/yats.vim'

	--Assembly Hilight
	use 'Shirk/vim-gas'

	-- NerdTree And NerdTree enhance
	use 'scrooloose/nerdtree'
	use 'Xuyuanp/nerdtree-git-plugin'
	-- TagBar
	use 'majutsushi/tagbar'
	-- use 'Yggdroot/indentLine'	"代码块可视化插件	只适用于使用空格缩进的文件中
	use 'nathanaelkane/vim-indent-guides'	-- 代码可视化插件
	-- ColorSchem
	use 'tomasr/molokai'
	use 'altercation/vim-colors-solarized'

	use 'chrisbra/csv.vim'

    use 'Shougo/denite.nvim'

	-- Web Dev
	-- use 'https://github.com/gorodinskiy/vim-coloresque.git'

	--为了帅！
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	-- use 'bling/vim-bufferline'
	use 'terryma/vim-multiple-cursors'
	--彩色括号配对
	use 'luochen1990/rainbow'

	-- 文件模糊匹配查找
	use 'kien/ctrlp.vim'
	-- 函数模糊匹配查找(,fu)
	use 'tacahiroy/ctrlp-funky'
	--  自动注释 推荐：*****
	use 'scrooloose/nerdcommenter'
	--  括号自动匹配 推荐：****
	use 'jiangmiao/auto-pairs'
	--  更多的文本对象
	use 'wellle/targets.vim'
	--  对周围的文本对象进行操作，例如 cs"' 将周围的双引号替换为单引号
	use 'tpope/vim-surround'
	--  显示 Mark 标记
	use 'kshenoy/vim-signature'
	--  自动添加 licenses 信息到当前文件
	use 'antoyo/vim-licenses'
	--  撤销操作树 Undotree
	use 'simnalamburt/vim-mundo'
	--快速跳转
	use 'easymotion/vim-easymotion'
	--  主题配色方案
	use 'flazz/vim-colorschemes'

	--显示复制内容
	use 'machakann/vim-highlightedyank'	

	use 'chrisbra/SudoEdit.vim'

	--toml support
    use 'cespare/vim-toml'
    --平滑滚动
    use 'yuttie/comfortable-motion.vim'

    use 'mcchrish/nnn.vim'

    use 'dhruvasagar/vim-table-mode'
    use 'gyim/vim-boxdraw'
    -- use 'glacambre/firenvim', { 'do': function('firenvim#install') }
    use 'voldikss/vim-floaterm'
    use {'liuchengxu/vim-clap', run = ':Clap install-binary'}
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = function () require 'plugconfs.treesitter' end }
end)

-- raw comands
-- TODO: migrate all .vim configurations to lua, and use the `config`
-- function provided by packer
-- TODO: config telescope.nvim
-- TODO: config easymotion
-- TODO: https://github.com/nvim-treesitter/nvim-treesitter
-- TODO: checkout Maskray's config as a reference
vim.api.nvim_exec([[
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
    source ~/.config/nvim/plugconfs/vista.vim
    source ~/.config/nvim/plugconfs/firenvim.vim
    source ~/.config/nvim/plugconfs/clap.vim
]], true)
