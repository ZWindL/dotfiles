local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local o = vim.o

cmd 'syntax on'
cmd 'filetype plugin on'
cmd 'filetype plugin indent on'

o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- block in normal and beam cursor in insert mode
o.scrolloff = 5
o.number = true
o.relativenumber = true
o.breakindent = true
o.termguicolors = true
o.copyindent = true
o.autoindent = true
o.showmode = false
o.history = 50		-- keep 50 lines of command line history
o.ruler = true		-- show the cursor position all the time
o.showcmd = true	-- display incomplete commands
o.incsearch = true	-- do incremental searching
o.tabstop=4
o.softtabstop=4
o.shiftwidth=4
-- set noexpandtab
o.expandtab = true
o.backup = true
o.backupdir = os.getenv('HOME') .. '/.cache/nvim/backup//'
o.directory = os.getenv('HOME') .. '/.cache/nvim/swap//'
o.undofile = true
o.undodir = os.getenv('HOME') .. '/.cache/nvim/undo//'
o.ignorecase = true
o.smartcase = true
o.backspace = 'indent,eol,start'    -- allow backspacing over everything in insert mode
o.fileencodings = 'utf-8,gbk'
o.lazyredraw = true -- do not redraw screen while running macros
o.hlsearch = true
o.updatetime = 100  -- for coc.nvim's hover time
o.mouse = 'a'
o.shell = '/bin/zsh'
if fn.has('nvim-0.3.2') == 1 or fn.has("patch-8.1.0360") then    -- histogram-based diff
    o.diffopt = 'filler,internal,algorithm:histogram,indent-heuristic'
end

o.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"

o.grepprg = "rg --hidden --vimgrep --smart-case --" -- use rg instead of grep
-- o.completeopt = {"menu", "menuone", "noselect", "noinsert"} -- A comma separated list of options for Insert mode completion
o.wildmenu = true   -- cmd autocomplete
o.wildignorecase = true -- When set case is ignored when completing file names and directories
o.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]]

g.tex_flavor = 'latex'
