local saga = require "lspsaga"
local a = vim.api

saga.init_lsp_saga({
    use_saga_diagnostic_sign = false, -- use trouble.nvim instead
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    dianostic_header_icon = "   ",
    code_action_icon = " ",
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true
    },
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>" -- quit can be a table
    },
    code_action_keys = {quit = "q", exec = "<CR>"},
    rename_action_keys = {
        quit = "<C-c>",
        exec = "<CR>" -- quit can be a table
    },
    definition_preview_icon = "  ",
    -- "single" "double" "round" "plus"
    border_style = "single",
    rename_prompt_prefix = "➤"
})

local opts = {noremap = true, silent = true}
a.nvim_set_keymap("n", "ga",
                  "<cmd>lua require'lspsaga.codeaction'.code_action()<CR>", opts)
a.nvim_set_keymap("v", "ga",
                  ":<C-U>lua require'lspsaga.codeaction'.range_code_action()<CR>",
                  opts)
a.nvim_set_keymap("n", "gr",
                  "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
a.nvim_set_keymap("n", "gh",
                  "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>",
                  opts)
-- scroll down hover doc or scroll in definition preview
a.nvim_set_keymap("n", "<C-f>",
                  "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>",
                  opts)
a.nvim_set_keymap("n", "<C-b>",
                  "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>",
                  opts)
-- signature help
a.nvim_set_keymap("n", "gs",
                  "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>",
                  opts)
-- rename
a.nvim_set_keymap("n", "gR", "<cmd>lua require('lspsaga.rename').rename()<CR>",
                  opts)
-- preview definition
a.nvim_set_keymap("n", "gH",
                  "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>",
                  opts)
-- diagnostics
a.nvim_set_keymap("n", "<space>E",
                  "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>",
                  opts)
a.nvim_set_keymap("n", "<space>e",
                  "<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>",
                  opts)
a.nvim_set_keymap("n", "]e",
                  "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>",
                  opts)
a.nvim_set_keymap("n", "[e",
                  "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>",
                  opts)
