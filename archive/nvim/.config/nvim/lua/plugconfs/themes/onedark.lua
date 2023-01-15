require("onedark").setup {
    style = "darker",
    code_style = {
        comments = 'italic',
        keywords = 'bold',
        functions = 'italic,bold',
        strings = 'none',
        variables = 'none'
    },
    toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},
}

require("onedark").load()
