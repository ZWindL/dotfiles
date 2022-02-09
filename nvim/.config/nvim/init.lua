-- load plugins
require('plugins')

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local o = vim.o

-- options
cmd 'syntax on'
cmd 'filetype plugin on'
cmd 'filetype plugin indent on'

o.scrolloff = 5
o.number = true
o.relativenumber = true
o.breakindent = true
o.termguicolors = true
o.copyindent = true
o.autoindent = true
-- o.noshowmode = true
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
o.termguicolors = true
o.wildmenu = true   -- cmd autocomplete
o.ignorecase = true
o.smartcase = true
o.foldmethod = 'syntax'
o.backspace = 'indent,eol,start'    -- allow backspacing over everything in insert mode
o.fileencodings = 'utf-8,gbk'
o.hlsearch = true
o.updatetime = 100  -- for coc.nvim's hover time
o.mouse = 'a'
o.shell = '/bin/zsh'
if fn.has('nvim-0.3.2') == 1 or fn.has("patch-8.1.0360") then    -- histogram-based diff
    o.diffopt = 'filler,internal,algorithm:histogram,indent-heuristic'
end

g.tex_flavor = 'latex'
g.mapleader = "\\"

-- theme
-- colorscheme CandyPaper
-- colorscheme Chasing_Logic
-- colorscheme cake
-- colorscheme colorful
pcall(cmd, 'colorscheme candyman')
-- set background=dark
-- highlight Normal guibg=NONE ctermbg=None


-- keybindings {{{
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local function nmap(lhs, rhs, opts)
    map('n', lhs, rhs, opts)
end
local function nmapp(lhs, rhs, opts)
    local options = {}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('n', lhs, rhs, options)
end

-- movement
map('', 'j', "(v:count == 0 ? 'gj' : 'j')", {noremap = true, silent = true, expr = true})
map('', 'k', "(v:count == 0 ? 'gk' : 'k')", {noremap = true, silent = true, expr = true})

-- buffer
map('', '<Leader>ct', ':bd<CR>')

-- terminal
map('t', '<C-A>', '<C-\\><C-N>')     -- enable terminal vim-mode

-- quickfix
nmapp('<F6>', ':cw<CR>')
nmapp('<F6>j', ':cn<CR>')
nmapp('<F6>k', ':cp<CR>')

-- misc
-- Don't use Ex mode, use Q for formatting
map('', 'Q', 'gq', {})

-- Autocmd {{{
function nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        vim.api.nvim_command('augroup '..group_name)
        vim.api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            vim.api.nvim_command(command)
        end
        vim.api.nvim_command('augroup END')
    end
end
local autocmds = {
    restore_cursor = {
        {'BufRead', '*', [[call setpos(".", getpos("'\""))]]};
    };
    packer = {
        {'BufWritePost', 'plugins.lua', 'PackerCompile'};
    };
    jsonc = {
        {'FileType', 'json', 'syntax match Comment +//.+$+'}
    }
}
nvim_create_augroups(autocmds)

-- raw comands
vim.api.nvim_exec([[
    set grepprg=grep\ -nH\ $*
    set grepprg=grep\ -nh\ $*
    set nocompatible
]], true)
