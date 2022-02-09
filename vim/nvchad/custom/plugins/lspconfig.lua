local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  lspconfig.pyright.setup {
    settings = {
      analysis = {
        typeCheckingMode = "off",
      },
    },
  }

  -- lspservers with default config
  local servers = {
    "tsserver", "html", "cssls",
    "bashls", "cssmodules_ls", "dockerls",
    "eslint", "jsonls", "vimls",
    "intelephense", "pyright"
  }

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = function(client, bufnr)
        attach(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
      end,
      capabilities = capabilities,
      flags = {
        debounce_text_changes = 150,
      },
    }
  end
end

return M
