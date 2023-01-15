-- load plugins
require('plugins')

-- options
require('options')

-- mappings
require('mappings')

-- autocmd
require('autocmd')

-- autocmd
require('neovide_options')

-- raw comands
vim.api.nvim_exec([[
    set nocompatible
]], true)
