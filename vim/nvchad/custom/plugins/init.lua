return {
  {
    "karb94/neoscroll.nvim",
    opt = true,
    config = function()
      require("neoscroll").setup({
        hide_cursor = false,
        easing_function = "sine",
      })
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    config = function()
      vim.g.symbols_outline = {
        highlight_hovered_item = false,
        auto_preview = false,
      }
      require("symbols-outline").setup()
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      require("null-ls").setup({
        sources = {
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.prettier,

          null_ls.builtins.diagnostics.flake8,
          null_ls.builtins.diagnostics.eslint,

        },
        on_attach = function(client)
          if client.resolved_capabilities.document_formatting then
            vim.cmd([[
              augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
              augroup END
            ]])
          end
        end,
      })
    end,
  },

}
