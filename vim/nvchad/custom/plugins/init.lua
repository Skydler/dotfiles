return {
  ["karb94/neoscroll.nvim"] = {
    config = function()
      require("neoscroll").setup({
        hide_cursor = false,
        easing_function = "sine",
      })
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },

  ["tpope/vim-surround"] = {},

  ["tpope/vim-fugitive"] = {},

  ["lambdalisue/suda.vim"] = { cmd = "SudaWrite" },

  ["folke/which-key.nvim"] = {
    disable = true,
  }
}
