local M = {}

local plugin_conf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.options = {
  user = function ()
    vim.opt.foldmethod="indent"
    vim.opt.foldlevelstart=99
    vim.opt.swapfile=false
    vim.g.mapleader = ","
    vim.opt.tabstop = 2

    vim.cmd("command W SudaWrite")
    vim.cmd([[
      let g:copilot_no_tab_map = v:true
      imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
    ]])
  end
}

M.ui = {
  theme = "onedark",

  hl_override = {
    TabLineFill = {
       fg = "",
       bg = ""
    },

    TabLine = {
      fg = "",
      bg = "",
    },

    TabLineSel = {
      fg = "green",
      bg = "grey",
    },
  }
}

M.plugins = {

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  remove = {
    "max397574/better-escape.nvim",
    "NvChad/nvterm",
    "akinsho/bufferline.nvim",
  },

  override = {
    ["kyazdani42/nvim-tree.lua"] = plugin_conf.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = plugin_conf.treesitter,
    ["hrsh7th/nvim-cmp"] = plugin_conf.cmp,
    ["feline-nvim/feline.nvim"] = plugin_conf.feline,
  },

  user = userPlugins,
}

M.mappings = require "custom.mappings"

return M
