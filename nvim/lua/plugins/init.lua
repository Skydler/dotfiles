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
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = function()
      return {
        install_dir = vim.fn.stdpath "data" .. "/site",
      }
    end,
    config = function(_, opts)
      local ok, treesitter = pcall(require, "nvim-treesitter")
      if not ok or treesitter.setup == nil then
        return
      end

      treesitter.setup {
        install_dir = opts.install_dir,
      }

      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
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
    opts = function()
      local conf = require "nvchad.configs.telescope"
      local overrides = require "configs.telescope"
      conf.extensions_list = overrides.extensions_list
      conf.pickers = vim.tbl_deep_extend("force", conf.pickers or {}, overrides.pickers or {})
      return conf
    end,
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    dependencies = "nvim-telescope/telescope.nvim",
    build = "make",
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
    "windwp/nvim-ts-autotag",
    event = { "BufReadPre", "BufNewFile" },
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
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      return require "configs.oil"
    end,
  },

  {
    "github/copilot.vim",
    cmd = "Copilot",
    event = "VeryLazy",
    config = function()
      vim.g.copilot_no_tab_map = true
    end,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" },
    config = function()
      dofile(vim.g.base46_cache .. "diffview")
      require("diffview").setup {
        enhanced_diff_hl = true,
      }
    end,
  },
}
