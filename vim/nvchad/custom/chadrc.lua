local M = {}

local plugin_conf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.options = {
   mapleader = ",",
   tabstop = 2,
}

M.ui = {
   theme = "onedark",
}

M.plugins = {

  status = {
    colorizer = true,
    bufferline = false,
  },

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  default_plugin_remove = {
    "max397574/better-escape.nvim"
  },

  default_plugin_config_replace = {
    nvim_tree = plugin_conf.nvimtree,
    nvim_treesitter = plugin_conf.treesitter,
    nvim_cmp = plugin_conf.cmp,
    feline = plugin_conf.feline,
  },

  install = userPlugins,
}

M.mappings = {

   window_nav = {
      moveLeft = "<A-h>",
      moveRight = "<A-l>",
      moveUp = "<A-k>",
      moveDown = "<A-j>",
   },

   terminal = {
      -- multiple mappings can be given for esc_termmode, esc_hide_termmode

      -- get out of terminal mode
      esc_termmode = { "jk" },

      -- get out of terminal mode and hide it
      esc_hide_termmode = { "JK" },
      -- show & recover hidden terminal buffers in a telescope picker
      pick_term = "<leader>tf",

      -- spawn a single terminal and toggle it
      -- this just works like toggleterm kinda
      new_horizontal = "",
      new_vertical = "",
      new_float = "<leader>ti",

      -- spawn new terminals
      spawn_horizontal = "<leader>tm",
      spawn_vertical = "<leader>tv",
      spawn_window = "<leader>tw",
   },
}

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

return M
