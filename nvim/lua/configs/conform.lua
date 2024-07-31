local prettier_conf = { "prettierd", "prettier", stop_after_first = true }

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = prettier_conf,
    html = prettier_conf,
    javascript = prettier_conf,
    javascriptreact = prettier_conf,
    typescript = prettier_conf,
    typescriptreact = prettier_conf,
    json = prettier_conf,
    markdown = prettier_conf,
    yaml = prettier_conf,
    go = { "gofmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
