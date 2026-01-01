require("nvchad.configs.lspconfig").defaults()

-- LSP configs
-- :help lspconfig-all
local servers = {
  html = {},
  cssls = {},
  bashls = {},
  gopls = {},
  yamlls = {},
  tailwindcss = {},
  terraformls = {
    filetypes = { "hcl", "terraform", "tf", "terraform-vars" },
  },
  ts_ls = {
    init_options = {
      hostInfo = "neovim",
      preferences = {
        providePrefixAndSuffixTextForRename = false,
      },
    },
  },

  ruff = {},
  ty = {},
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end
