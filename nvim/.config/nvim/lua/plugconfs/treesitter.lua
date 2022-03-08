require'nvim-treesitter.configs'.setup {
   -- One of "all", "maintained" (parsers with maintainers), or a list of languages
   ensure_installed = "maintained",

   -- List of parsers to ignore installing
   ignore_install = {},

   -- Install languages synchronously (only applied to `ensure_installed`)
   sync_install = true,

   highlight = {
      -- `false` will disable the whole extension
      enable = true,

      -- list of language that will be disabled
      disable = {},

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
   },
   incremental_selection = {
      enable = true,
      keymaps = {
         init_selection = "<CR>",
         scope_incremental = "<CR>",
         node_incremental = "<TAB>",
         node_decremental = "<S-TAB>"
      }
   },
   indent = {enable = true},
   autopairs = {{enable = true}},
   textobjects = {
      select = {
         enable = true,
         -- Automatically jump forward to textobj, similar to targets.vim
         lookahead = true,
         keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["al"] = "@loop.outer",
            ["il"] = "@loop.inner",
            ["ib"] = "@block.inner",
            ["ab"] = "@block.outer",
            ["ir"] = "@parameter.inner",
            ["ar"] = "@parameter.outer"
         }
      },
      swap = {
         enable = true,
         swap_next = {
            ["<leader>a"] = "@parameter.inner",
         },
         swap_previous = {
            ["<leader>A"] = "@parameter.inner",
         },
      },
      move = {
         enable = false,
         set_jumps = true, -- whether to set jumps in the jumplist
         goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
         },
         goto_next_end = {
            ["]M"] = "@function.outer",
            ["]["] = "@class.outer",
         },
         goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
         },
         goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[]"] = "@class.outer",
         },
      },
   },
   rainbow = {
      enable = true,
      extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
      max_file_lines = 4000 -- Do not enable for files with more than specified lines
   }
}
