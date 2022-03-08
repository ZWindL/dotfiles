require("Navigator").setup()
local map = vim.api.nvim_set_keymap
local default_options = {noremap = true, silent = true}

map("n", "<A-h>", "<cmd>lua require('Navigator').left()<CR>", default_options)
map("n", "<A-k>", "<cmd>lua require('Navigator').up()<CR>", default_options)
map("n", "<A-l>", "<cmd>lua require('Navigator').right()<CR>", default_options)
map("n", "<A-j>", "<cmd>lua require('Navigator').down()<CR>", default_options)
