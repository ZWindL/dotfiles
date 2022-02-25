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
  ["SudoEdit.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/SudoEdit.vim",
    url = "https://github.com/chrisbra/SudoEdit.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["comfortable-motion.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/comfortable-motion.vim",
    url = "https://github.com/yuttie/comfortable-motion.vim"
  },
  ["context_filetype.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/context_filetype.vim",
    url = "https://github.com/Shougo/context_filetype.vim"
  },
  ["csv.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/csv.vim",
    url = "https://github.com/chrisbra/csv.vim"
  },
  ["ctrlp-funky"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/ctrlp-funky",
    url = "https://github.com/tacahiroy/ctrlp-funky"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/ctrlp.vim",
    url = "https://github.com/kien/ctrlp.vim"
  },
  ["denite.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/denite.nvim",
    url = "https://github.com/Shougo/denite.nvim"
  },
  ["echodoc.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/echodoc.vim",
    url = "https://github.com/Shougo/echodoc.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["nnn.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nnn.vim",
    url = "https://github.com/mcchrish/nnn.vim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25plugconfs.treesitter\frequire\0" },
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { ' require("onedark").setup({ highlight_linenumber = true }) ' },
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
  rainbow = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  skim = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/skim",
    url = "https://github.com/lotabout/skim"
  },
  tagbar = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/majutsushi/tagbar"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vifm.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vifm.vim",
    url = "https://github.com/vifm/vifm.vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-boxdraw"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-boxdraw",
    url = "https://github.com/gyim/vim-boxdraw"
  },
  ["vim-clap"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-clap",
    url = "https://github.com/liuchengxu/vim-clap"
  },
  ["vim-colorschemes"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-colorschemes",
    url = "https://github.com/flazz/vim-colorschemes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gas"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-gas",
    url = "https://github.com/Shirk/vim-gas"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-indent-guides"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-indent-guides",
    url = "https://github.com/nathanaelkane/vim-indent-guides"
  },
  ["vim-licenses"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-licenses",
    url = "https://github.com/antoyo/vim-licenses"
  },
  ["vim-lsp-cxx-highlight"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-lsp-cxx-highlight",
    url = "https://github.com/jackguo380/vim-lsp-cxx-highlight"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-mundo"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-reason-plus"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-reason-plus",
    url = "https://github.com/reasonml-editor/vim-reason-plus"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
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
  ["vista.vim"] = {
    loaded = true,
    path = "/home/zwindl/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
 require("onedark").setup({ highlight_linenumber = true }) 
time([[Config for onedark.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25plugconfs.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
