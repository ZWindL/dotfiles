require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_snipmate').lazy_load()
-- not sure if it's correct require('luasnip.loaders.from_vscode').lazy_load({paths = { os.getenv('HOME') .. '/.config/nvim/snippets/' }})
require('luasnip').filetype_extend('all', { '_' })
