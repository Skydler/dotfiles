local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require("custom.configs.null-ls")
        end,
      },
    },
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    dependencies = "tpope/vim-fugitive",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile" },
    opts = overrides.nvimtree,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require("plugins.configs.telescope")
      conf.defaults.vimgrep_arguments = overrides.telescope.defaults.vimgrep_arguments
      conf.extensions_list = overrides.telescope.extensions_list
      return conf
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        names = false,
      },
    },
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },

  -- New, not in default plugins
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("custom.configs.neoscroll")
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
    event = "VeryLazy",
  },

  {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite",
  },

  {
    "danymat/neogen",
    enabled = false,
    cmd = "Neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("custom.configs.neogen")
    end,
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
      local conf = require("nvim-ts-autotag.internal")
      return conf.tbl_filetypes
    end,
  },

  {
    "laytan/cloak.nvim",
    event = "VeryLazy",
    config = true,
  },
}

return plugins
