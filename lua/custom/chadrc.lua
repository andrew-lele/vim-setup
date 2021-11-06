-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the strucutre of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

M.options = {
--    relativenumber = true,
     relativenumber = false,
     numberwidth = 2,
     expandtab = true,
     shiftwidth = 4,
     smartindent = true,
     mapleader = " ",
     autosave = false,
     enable_insertNav = true, -- navigation in insertmode
     tabstop = 4,
     mouse = "", -- disable mouse
-- }

-- M.ui = {
--   theme = "nord"
}

-- vim mappings
M.mappings = {
   insert_nav = {
      forward = "<A-l>",
      backward = "<A-h>",
      top_of_line = "<C-a>",
      end_of_line = "<C-e>",
      prev_line = "<C-j>",
      next_line = "<C-k>",
   },
}

-- plugin mappings
M.mappings.plugins = {
   telescope = {
      live_grep = "<leader>fg",
  },
    bufferline = {
      new_buffer = "<S-t>",
      -- newtab = "<C-t>b",
      -- close = "<S-x>", -- close a buffer with custom func in utils.lua
      next_buffer = "<C-l>", -- next buffer
      prev_buffer = "<C-h>", -- previous buffer
    },
}

-- NvChad included plugin options & overrides
M.plugins = {
   options = {
     -- relative numbers in normal mode tool at the bottom of options.lua
        lspconfig = {
         -- path of file containing setups of different lsps (ex : "custom.plugins.lspconfig"), read the docs for more info
         setup_lspconf = "custom.plugins.lspconfig"
        },
   },
   -- To change the Packer `config` of a plugin that comes with NvChad,
   -- add a table entry below matching the plugin github name
   --              '-' -> '_', remove any '.lua', '.nvim' extensions
   -- this string will be called in a `require`
   --              use "(custom.configs).my_func()" to call a function
   --              use "custom.blankline" to call a file
   default_plugin_config_replace = {},
}

return M
