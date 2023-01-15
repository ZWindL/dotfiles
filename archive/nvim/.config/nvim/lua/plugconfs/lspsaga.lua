local k = vim.keymap
local saga = require("lspsaga")

saga.init_lsp_saga({
    border_style = "rounded",
    move_in_saga = {prev = "<C-p>", next = "<C-n>"},
    diagnostic_header = {" ", " ", " ", "ﴞ "},
    -- add bracket or something with diagnostic source, just have 2 elements
    -- diagnostic_source_bracket = {},
    code_action_icon = "💡",
    -- code_action_icon = " ",
    -- if true can press number to execute the codeaction in codeaction window
    code_action_num_shortcut = true,
    -- same as nvim-lightbulb but async
    code_action_lightbulb = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true
    },
    -- finder icons
    finder_icons = {def = "  ", ref = "諭 ", link = "  "},
    max_preview_lines = 10,
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        tabe = "t",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>" -- quit can be a table
    },
    code_action_keys = {quit = "q", exec = "<CR>"},
    rename_action_quit = "<C-g>",
    -- show symbols in winbar must nightly
    symbol_in_winbar = {
        in_custom = false,
        enable = false,
        separator = " ",
        show_file = true,
        click_support = false
    }
})

local opts = {remap = false, silent = true}

-- code action
k.set("n", "ga", "<cmd>Lspsaga code_action<CR>", opts)
k.set("v", "ga", "<cmd><C-U>Lspsaga range_code_action<CR>", opts)

-- definition/reference finder
k.set("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opts)

-- hover doc
k.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- rename
k.set("n", "gR", "<cmd>Lspsaga rename<CR>", opts)

-- preview definition
k.set("n", "gh", "<cmd>Lspsaga preview_definition<CR>", opts)

-- diagnostics
k.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show line diagnostics

-- jump diagnostic
k.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
k.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

-- or jump to error
k.set("n", "[E", function()
    require("lspsaga.diagnostic").goto_prev({
        severity = vim.diagnostic.severity.ERROR
    })
end, opts)
k.set("n", "]E", function()
    require("lspsaga.diagnostic").goto_next({
        severity = vim.diagnostic.severity.ERROR
    })
end, opts)

-- Outline
k.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", {silent = true})
