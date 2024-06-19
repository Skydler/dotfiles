-- LSP configs
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "bashls",
  "terraformls",
  "gopls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig["pyright"].setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
}

lspconfig["tsserver"].setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    hostInfo = "neovim",
    preferences = {
      providePrefixAndSuffixTextForRename = false,
    },
  },
}
