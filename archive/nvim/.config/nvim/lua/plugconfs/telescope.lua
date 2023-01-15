local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        file_ignore_patterns = {"node_modules", "%.jpg", "%.png", ".git"},
        sorting_strategy = "descending",
        layout_strategy = "flex",
        border = {},
        borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        -- path_display = "smart", -- "smart" can cause disappearance of filename
        color_devicons = true,
        set_env = {["COLORTERM"] = "truecolor"},
        vimgrep_arguments = {
            "rg", "--follow", "--color=never", "--no-heading",
            "--with-filename", "--line-number", "--column", "--smart-case"
        }
    },
    -- pickers = {},
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true
        },
        project = {
            base_dirs = {{"~/Projects", max_depth = 4}},
            hidden_files = false
        },
        heading = {},
        filebrowser = {},
        frecency = {
            show_scores = false,
            show_unindexed = true,
            ignore_patterns = {
                "*.git/*", "*/tmp/*", "*/node_modules/*", "*/venv/*"
            },
            disable_devicons = false,
            workspaces = {
                ["conf"] = "/home/zwindl/.config",
                ["data"] = "/home/zwindl/.local/share",
                ["project"] = "/home/zwindl/Projects",
                ["mess"] = "/home/zwindl/test"
            }
        }
    }
})

telescope.load_extension("fzf")
telescope.load_extension("project")
telescope.load_extension("zoxide")
telescope.load_extension("heading")
telescope.load_extension("file_browser")
telescope.load_extension("frecency")
telescope.load_extension("software-licenses")
telescope.load_extension("goimpl")
telescope.load_extension("hoogle")

vim.api.nvim_set_keymap("n", "<C-p>",
                        "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-p>",
                        "<Cmd>lua require('telescope.builtin').builtin()<CR>",
                        {noremap = true, silent = true})
-- vim.api.nvim_set_keymap(
--     'n',
--     '<C-p>',
--     ":lua require'telescope'.extensions.project.project{}<CR>",
--     {noremap = true, silent = true}
-- )

-- vim.api.nvim_set_keymap('n', '<leader>im', [[<cmd>lua require'telescope'.extensions.goimpl.goimpl{}<CR>]], {noremap=true, silent=true})
