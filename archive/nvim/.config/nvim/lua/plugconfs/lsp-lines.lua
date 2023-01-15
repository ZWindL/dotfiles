require("lsp_lines").setup()

-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({virtual_text = false})
vim.diagnostic.config({virtual_lines = true})

vim.keymap.set("n", "<leader>d", require("lsp_lines").toggle,
               {desc = "Toggle lsp_lines", remap = false, silent = true})
