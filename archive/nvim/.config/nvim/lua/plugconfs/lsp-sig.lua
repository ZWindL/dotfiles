cfg = {
    bind = true,
    doc_lines = 10,
    floating_window = true,
    -- floating_window_above_cur_line = true,
    hint_enable = true, -- virtual hint enable
    hint_prefix = "🐼 ", -- Panda for parameter
    -- hint_scheme = "String",
    hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
    max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
    -- to view the hiding contents
    max_width = 80, -- max_width of signature floating_window, line will be wrapped if exceed max_width
    -- transparency = 80,
    -- shadow_blend = 30,
    padding = " ",
    handler_opts = {border = "single"}
}
require"lsp_signature".setup(cfg)
