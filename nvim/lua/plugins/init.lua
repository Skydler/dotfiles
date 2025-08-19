return {
  -- Overrides
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
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
    dependencies = {
      { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
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
    "nvim-telescope/telescope-fzf-native.nvim",
    dependencies = "nvim-telescope/telescope.nvim",
    build = "make",
  },

  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = true,
  },

  {
    "kwkarlwang/bufjump.nvim",
    event = "VeryLazy",
  },

  {
    "mfussenegger/nvim-lint",
    enabled = false,
    event = "VeryLazy",
    config = function()
      require "configs.nvim_lint"
    end,
  },

  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },

  {
    "github/copilot.vim",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
    end,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
}
