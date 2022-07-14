local a = vim.api
local k = vim.keymap
local lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp
                                                                     .protocol
                                                                     .make_client_capabilities())

-- for ufo
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local servers = {
    "ccls", "ansiblels", "asm_lsp", "bashls", "gopls", "hls", "rust_analyzer",
    "pyright", "cmake", "yamlls"
}

local on_attach = function(client, bufnr)
    -- require"illuminate".on_attach(client)
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    local opts = {remap = false, silent = true, buffer = true}
    -- Mappings.
    -- a.nvim_buf_set_keymap(bufnr, 'n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    -- a.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    -- a.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    -- a.nvim_buf_set_keymap(bufnr, 'n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

    vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
    -- a.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    k.set("n", "gD", vim.lsp.buf.declaration, opts)
    k.set("n", "gd", vim.lsp.buf.definition, opts)
    -- a.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>",
    --                       opts)
    k.set("n", "gi", vim.lsp.buf.implementation, opts)
    k.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    -- a.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts) -- use lspsaga
    -- a.nvim_buf_set_keymap(bufnr, 'n', 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>', opts) -- use lspsaga
    -- a.nvim_buf_set_keymap(bufnr, 'n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts) -- use lspsaga's code_action
    -- a.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts) -- use lspsaga
    vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
    -- config documentation highlighting
    if client.server_capabilities.documentHighlightProvider then
        local g_lsphi = vim.api.nvim_create_augroup("LspHi", {clear = true})
        vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI"}, {
            group = g_lsphi,
            buffer = bufnr,
            callback = vim.lsp.buf.document_highlight
        })
        vim.api.nvim_create_autocmd({"CursorMoved"}, {
            group = g_lsphi,
            buffer = bufnr,
            callback = vim.lsp.buf.clear_references
        })
    end
end

for _, server in ipairs(servers) do
    lsp[server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {debounce_text_changes = 150}
    }
end
-- specify configurations
-- ccls
lsp.ccls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        compilationDatabaseDirectory = "build",
        index = {threads = 0},
        clang = {excludeArgs = {"-frounding-math"}},
        single_file_support = true,
        cache = {directory = ".ccls-cache"}
    }
}

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
lsp.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            cmd = {"lua-language-server"},
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = "LuaJIT",
                -- Setup your lua path
                path = runtime_path
            },
            completion = {enable = true, callSnippet = "Both"},
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {"vim", "describe"},
                disable = {"lowercase-global"}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                [vim.fn.expand("/usr/share/awesome/lib")] = true
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {enable = false}
        }
    }
}

lsp.yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    schemaStore = {
        enable = true,
        url = "https://www.schemastore.org/api/json/catalog.json"
    },
    schemas = {
        kubernetes = "*.yaml",
        ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
        ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
        ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
        ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
        ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
        ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
        ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
        ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
        ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
        ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
        ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}"
    },
    format = {enabled = false},
    validate = false, -- TODO: conflicts between Kubernetes resources and kustomization.yaml
    completion = true,
    hover = true
}

require"lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
    doc_lines = 2, -- Set to 0 for not showing doc
    hint_enable = true,
    hint_prefix = "🐼 ",
    handler_opts = {
        border = "shadow" -- double, single, shadow, none
    }
})
