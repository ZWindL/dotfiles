local k = vim.keymap
local saga = require("lspsaga")
local action = require("lspsaga.action")
local caction = require("lspsaga.codeaction")

saga.init_lsp_saga({
    border_style = "rounded",
    move_in_saga = {prev = "<C-p>", next = "<C-n>"},
    diagnostic_header = {" ", " ", " ", "ﴞ "},
    show_diagnostic_source = true,
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
    -- separator in finder
    finder_separator = "  ",
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
    definition_preview_icon = "  ",
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
k.set("n", "ga", caction.code_action, opts)
k.set("v", "ga", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    action.range_code_action()
end, opts)

-- definition/reference finder
k.set("n", "gr", require("lspsaga.finder").lsp_finder, opts)

-- hover doc
k.set("n", "gh", require("lspsaga.hover").render_hover_doc, opts)
k.set("n", "<C-f>", function()
    action.smart_scroll_with_saga(1)
end, opts)
k.set("n", "<C-b>", function()
    action.smart_scroll_with_saga(-1)
end, opts)

-- signature help
k.set("n", "gs", require("lspsaga.signaturehelp").signature_help, opts)

-- rename
k.set("n", "gR", require("lspsaga.rename").lsp_rename, opts)

-- preview definition
k.set("n", "gH", require("lspsaga.definition").preview_definition, opts)

-- diagnostics
k.set("n", "<leader>cd", require("lspsaga.diagnostic").show_line_diagnostics,
      opts) -- show line diagnostics

-- jump diagnostic
k.set("n", "[e", require("lspsaga.diagnostic").goto_prev, opts)
k.set("n", "]e", require("lspsaga.diagnostic").goto_next, opts)

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
