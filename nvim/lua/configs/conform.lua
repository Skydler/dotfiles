local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black", "isort" },
    terraform = { "terraform_fmt" },

    css = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    markdown = { { "prettierd", "prettier" } },
    yaml = { { "prettierd", "prettier" } },
  },

  formatters = {
    black = {
      prepend_args = { "--line-length", "120" },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
