enable_check_bracket_line = false
local ok, autopairs = pcall(require, "nvim-autopairs")
if not ok then
    return
end

local rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')
local ts_conds = require('nvim-autopairs.ts-conds') -- treesitter conditions

autopairs.setup({
      disable_filetype          = { "TelescopePrompt" },
      disable_in_macro          = true,  -- disable when recording or executing a macro
      disable_in_visualblock    = false, -- disable when insert after visual block mode
      ignored_next_char         = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
      enable_moveright          = true,
      enable_afterquote         = true,  -- add bracket pairs after quote
      enable_check_bracket_line = true,  --- check bracket in same line
      map_bs                    = true,  -- map the <BS> key
      map_c_h                   = true,  -- Map the <C-h> key to delete a pair
      map_c_w                   = false, -- map <c-w> to delete a pair if possible
      check_ts                  = false,
      ts_config = {
         lua = {'string'}, -- it will not add a pair on that treesitter node
         javascript = {'template_string'},
         -- java = false, -- don't check treesitter on java
      }
})

autopairs.add_rule(rule("$$","$$","tex"))
-- see here for more rules' examples: https://github.com/windwp/nvim-autopairs#rule

-- press % => %% only while inside a comment or string
autopairs.add_rules({
  rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'}))
})
