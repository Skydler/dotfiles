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
}

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

return M
