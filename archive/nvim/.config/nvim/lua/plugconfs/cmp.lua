-- Setup nvim-cmp.
local cmp = require("cmp")
local lspkind = require("lspkind")
local compare = require("cmp.config.compare")
local luasnip = require("luasnip")

lspkind.init({
    symbol_map = {
        Text = "",
        Method = "",
        Function = "",
        Constructor = "",
        Field = "ﰠ",
        Variable = "",
        Class = "ﴯ",
        Interface = "",
        Module = "",
        Property = "ﰠ",
        Unit = "塞",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "פּ",
        Event = "",
        Operator = "",
        TypeParameter = ""
    }
})

cmp.setup({
    formatting = {
        format = lspkind.cmp_format {
            with_text = false,
            maxwidth = 50,
            menu = {
                buffer = "BUF",
                nvim_lsp = "LSP",
                path = "PATH",
                luasnip = "SNIP",
                cmp_tabnine = "TN",
                calc = "CALC",
                spell = "SPELL",
                emoji = "EMOJI"
            }
        }
    },
    experimental = {
        native_menu = false,
        ghost_text = false -- this feature coflicts with copilot.vim
    },
    sorting = {
        priority_weight = 2,
        comparators = {
            require("cmp_tabnine.compare"), compare.offset, compare.exact,
            compare.score, compare.recently_used, compare.kind,
            compare.sort_text, compare.length, compare.order
        }
    },
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
        end
    },
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ["<C-g>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = false
        }),
        ["<Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes(
                                    "<Plug>luasnip-expand-or-jump", true, true,
                                    true), "")
            else
                -- work with copilot
                local copilot_keys = vim.fn["copilot#Accept"]("")
                if copilot_keys ~= "" then
                    vim.api.nvim_feedkeys(copilot_keys, "i", true)
                else
                    fallback()
                end
            end
        end,
        ["<S-Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes(
                                    "<Plug>luasnip-jump-prev", true, true, true),
                                "")
            else
                fallback()
            end
        end
    },
    sources = cmp.config.sources({
        {name = "nvim_lsp"}, {name = "luasnip"}, {name = "calc"},
        {name = "buffer"}, {name = "emoji"}, {name = "spell"},
        {name = "cmp_tabnine"}, {name = "path"}
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
    sources = cmp.config.sources({
        {name = "cmp_git"}, -- You can specify the `cmp_git` source if you were installed it. 
        {name = "buffer"}
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {sources = {{name = "buffer"}}})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
    sources = cmp.config.sources({{name = "path"}, {name = "cmdline"}})
})
