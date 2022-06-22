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

  ["tpope/vim-surround"] = {},

  ["tpope/vim-fugitive"] = {},

  ["lambdalisue/suda.vim"] = { cmd = "SudaWrite" },

  ["github/copilot.vim"] = {},

  ["folke/which-key.nvim"] = {
    disable = true,
  }
}
