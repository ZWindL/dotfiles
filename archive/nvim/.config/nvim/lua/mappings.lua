-- some of the are copoied from https://github.com/Allaman/nvim/blob/main/lua/mappings.lua
local map = vim.api.nvim_set_keymap
default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

local function nmap(lhs, rhs, opts)
    map("n", lhs, rhs, opts)
end
local function nmapp(lhs, rhs, opts)
    local options = {}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap("n", lhs, rhs, options)
end

-- map the leader key
map("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "

-- movement
map("", "j", "(v:count == 0 ? 'gj' : 'j')", expr_options)
map("", "k", "(v:count == 0 ? 'gk' : 'k')", expr_options)

-- search and recenter
map("n", "n", "nzz", default_options)
map("n", "N", "Nzz", default_options)

-- better indenting
map("v", "<", "<gv", default_options)
map("v", ">", ">gv", default_options)

-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", default_options)
map("x", "J", ":move '>+1<CR>gv-gv", default_options)

-- buffer
map("n", "[b", ":bp<CR>", default_options)
map("n", "]b", ":bn<CR>", default_options)

-- terminal
map("t", "<C-A>", "<C-\\><C-N>", default_options) -- enable terminal vim-mode

-- quickfix
nmapp("<F6>", ":cw<CR>")
nmapp("<F6>j", ":cn<CR>")
nmapp("<F6>k", ":cp<CR>")

-- misc
-- Don't use Ex mode, use Q for formatting
map("", "Q", "gq", {})

function EscapePair()
    local closers = {")", "]", "}", ">", "'", "\"", "`", ","}
    local line = vim.api.nvim_get_current_line()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local after = line:sub(col + 1, -1)
    local closer_col = #after + 1
    local closer_i = nil
    for i, closer in ipairs(closers) do
        local cur_index, _ = after:find(closer)
        if cur_index and (cur_index < closer_col) then
            closer_col = cur_index
            closer_i = i
        end
    end
    if closer_i then
        vim.api.nvim_win_set_cursor(0, {row, col + closer_col})
    else
        vim.api.nvim_win_set_cursor(0, {row, col + 1})
    end
end

map("i", "<C-l>", "<cmd>lua EscapePair()<CR>", default_options)
