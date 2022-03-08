-- Autocmd {{{
function nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        vim.api.nvim_command("augroup " .. group_name)
        vim.api.nvim_command("autocmd!")
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten {"autocmd", def}, " ")
            vim.api.nvim_command(command)
        end
        vim.api.nvim_command("augroup END")
    end
end
local autocmds = {
    restore_cursor = {{"BufRead", "*", [[call setpos(".", getpos("'\""))]]}},
    packer = {{"BufWritePost", "plugins.lua", "PackerCompile"}},
    jsonc = {{"FileType", "json", "syntax match Comment +//.+$+"}},
    highlight_yanked = {
        {
            "TextYankPost", "*",
            "silent! lua vim.highlight.on_yank({timeout=200})"
        }
    },
    lsp_hi = {
        {"CursorHold", "*", "lua vim.lsp.buf.document_highlight()"},
        {"CursorHoldI", "*", "lua vim.lsp.buf.document_highlight()"},
        {"CursorMoved", "*", "lua vim.lsp.buf.clear_references()"}
    }
}

nvim_create_augroups(autocmds)
