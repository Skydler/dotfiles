return {
  -- Overrides
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = function()
      return require "configs.mason"
    end,
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile" },
    opts = function()
      return require "configs.nvimtree"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "nvchad.configs.telescope"
      local overrides = require "configs.telescope"

      conf.defaults.vimgrep_arguments = overrides.defaults.vimgrep_arguments
      conf.extensions_list = overrides.extensions_list
      return conf
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = function()
      return require "configs.colorizer"
    end,
  },

  -- New additions

  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.neoscroll"
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = true,
  },

  {
    "tpope/vim-fugitive",
    cmd = "G",
    event = "VeryLazy",
  },

  {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite",
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    dependencies = "nvim-telescope/telescope.nvim",
    build = "make",
  },

  {
    "windwp/nvim-ts-autotag",
    ft = function()
      local conf = require "nvim-ts-autotag.internal"
      return conf.tbl_filetypes
    end,
  },

  {
    "laytan/cloak.nvim",
    event = "VeryLazy",
    config = true,
  },

  {
    "kwkarlwang/bufjump.nvim",
    event = "VeryLazy",
  },

  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.nvim_lint"
    end,
  },
}
