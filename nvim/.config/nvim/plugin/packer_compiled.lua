-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/zwindl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/zwindl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/zwindl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/zwindl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/zwindl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { 'require("plugconfs/luasnip")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["Navigator.nvim"] = {
    config = { 'require("plugconfs/navigator")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/Navigator.nvim",
    url = "https://github.com/numToStr/Navigator.nvim"
  },
  ["SudoEdit.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/SudoEdit.vim",
    url = "https://github.com/chrisbra/SudoEdit.vim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["cheatsheet.nvim"] = {
    config = { 'require("plugconfs/cheatsheet")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim",
    url = "https://github.com/sudormrfbin/cheatsheet.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    config = { 'require("plugconfs/copilot")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["csv.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/csv.vim",
    url = "https://github.com/chrisbra/csv.vim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = { 'require("plugconfs/diffview")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["formatter.nvim"] = {
    config = { 'require("plugconfs/formatter")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["git-blame.nvim"] = {
    config = { 'require("plugconfs/git-blame")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("plugconfs/gitsigns")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["go.nvim"] = {
    config = { 'require("plugconfs/go")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/go.nvim",
    url = "https://github.com/ray-x/go.nvim"
  },
  ["goimpl.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/goimpl.nvim",
    url = "https://github.com/edolphin-ydf/goimpl.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("plugconfs/blankline")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { 'require("plugconfs/lsp-sig")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { 'require("plugconfs/lspsaga")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("plugconfs/lualine")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["marks.nvim"] = {
    config = { 'require("plugconfs/marks")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentau/marks.nvim"
  },
  neogit = {
    config = { 'require("plugconfs/neogit")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { 'require("plugconfs/neoscroll")' },
    keys = { { "", "<C-u>" }, { "", "<C-d>" }, { "", "<C-b>" }, { "", "<C-f>" }, { "", "<C-e>" }, { "", "zt" }, { "", "zz" }, { "", "zb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  ["nvim-autopairs"] = {
    config = { 'require("plugconfs/autopairs")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-bufferline.lua"] = {
    config = { 'require("plugconfs/bufferline")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { 'require("plugconfs/cmp")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { 'require("plugconfs/colorizer")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("plugconfs/lspconfig")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { 'require("plugconfs/notify")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("plugconfs/nvim-tree")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { 'require("plugconfs/treesitter")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { 'require("plugconfs/themes/onedark")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/ful1e5/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { 'require("plugconfs/project")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/startuptime.vim",
    url = "https://github.com/tweekmonster/startuptime.vim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { 'require("plugconfs/symbols")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-heading.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-heading.nvim",
    url = "https://github.com/crispgm/telescope-heading.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope-software-licenses.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-software-licenses.nvim",
    url = "https://github.com/chip/telescope-software-licenses.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim",
    url = "https://github.com/nvim-telescope/telescope-symbols.nvim"
  },
  ["telescope-zoxide"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    config = { 'require("plugconfs/telescope")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  telescope_hoogle = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope_hoogle",
    url = "https://github.com/luc-tielen/telescope_hoogle"
  },
  ["todo-comments.nvim"] = {
    commands = { "TodoTrouble", "TodoTelescope" },
    config = { 'require("plugconfs/todo")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { 'require("plugconfs/toggleterm")' },
    keys = { { "", "<C-y>" }, { "", "<leader>ft" }, { "", "<leader>gt" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble", "TroubleToggle" },
    config = { 'require("plugconfs/trouble")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { 'require("plugconfs/twilight")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-illuminate"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-mundo"] = {
    config = { 'require("plugconfs/undotree")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-reason-plus"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-reason-plus",
    url = "https://github.com/reasonml-editor/vim-reason-plus"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-table-mode"] = {
    config = { 'require("plugconfs/vim-table")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-toml",
    url = "https://github.com/cespare/vim-toml"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["which-key.nvim"] = {
    config = { 'require("plugconfs/which")' },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["yaml.nvim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/yaml.nvim",
    url = "https://github.com/cuducos/yaml.nvim"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    config = { 'require("plugconfs/zen-mode")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^nvim%-bqf"] = "fzf"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require("plugconfs/blankline")
time([[Config for indent-blankline.nvim]], false)
-- Config for: vim-mundo
time([[Config for vim-mundo]], true)
require("plugconfs/undotree")
time([[Config for vim-mundo]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
require("plugconfs/lsp-sig")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require("plugconfs/autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("plugconfs/lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require("plugconfs/lspsaga")
time([[Config for lspsaga.nvim]], false)
-- Config for: Navigator.nvim
time([[Config for Navigator.nvim]], true)
require("plugconfs/navigator")
time([[Config for Navigator.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
require("plugconfs/notify")
time([[Config for nvim-notify]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
require("plugconfs/themes/onedark")
time([[Config for onedark.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
require("plugconfs/project")
time([[Config for project.nvim]], false)
-- Config for: vim-table-mode
time([[Config for vim-table-mode]], true)
require("plugconfs/vim-table")
time([[Config for vim-table-mode]], false)
-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
require("plugconfs/marks")
time([[Config for marks.nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
require("plugconfs/neogit")
time([[Config for neogit]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("plugconfs/treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("plugconfs/telescope")
time([[Config for telescope.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require("plugconfs/luasnip")
time([[Config for LuaSnip]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require("plugconfs/which")
time([[Config for which-key.nvim]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
require("plugconfs/copilot")
time([[Config for copilot.vim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
require("plugconfs/twilight")
time([[Config for twilight.nvim]], false)
-- Config for: go.nvim
time([[Config for go.nvim]], true)
require("plugconfs/go")
time([[Config for go.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("plugconfs/nvim-tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require("plugconfs/cmp")
time([[Config for nvim-cmp]], false)
-- Config for: cheatsheet.nvim
time([[Config for cheatsheet.nvim]], true)
require("plugconfs/cheatsheet")
time([[Config for cheatsheet.nvim]], false)
-- Config for: git-blame.nvim
time([[Config for git-blame.nvim]], true)
require("plugconfs/git-blame")
time([[Config for git-blame.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewClose lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewToggleFiles lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewToggleFiles", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TodoTrouble lua require("packer.load")({'todo-comments.nvim'}, { cmd = "TodoTrouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TodoTelescope lua require("packer.load")({'todo-comments.nvim'}, { cmd = "TodoTelescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewFocusFiles lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewFocusFiles", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <leader>ft <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>leader>ft", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>gt <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>leader>gt", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-b> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-b>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> zz <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "zz", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-f> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-f>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> zt <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "zt", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-u> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-u>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-d> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-d>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-y> <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>C-y>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> zb <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "zb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-e> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-e>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'yaml.nvim'}, { ft = "yaml" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitsigns.nvim', 'lightspeed.nvim', 'nvim-bufferline.lua', 'nvim-colorizer.lua'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lualine.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'vim-illuminate'}, { event = "CursorHold *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'todo-comments.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'formatter.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
