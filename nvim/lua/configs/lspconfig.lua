-- LSP configs
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local configs = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

local servers = {
  html = {},
  cssls = {},
  bashls = {},
  gopls = {},
  yamlls = {},
  astro = {},
  tailwindcss = {},
  ts_ls = {
    init_options = {
      hostInfo = "neovim",
      preferences = {
        providePrefixAndSuffixTextForRename = false,
      },
    },
  },

  pyright = {
    settings = {
      pyright = {
        -- Using Ruff's import organizer
        disableOrganizeImports = true,
      },
      python = {
        analysis = {
          typeCheckingMode = "standard",
          autoSearchPaths = true,
        },
      },
    },
  },
}

lspconfig["ruff"].setup {
  on_attach = function(client, _)
    if client.name == "ruff" then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end
  end,
  on_init = configs.on_init,
  capabilities = configs.capabilities,
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  lspconfig[name].setup(opts)
end
