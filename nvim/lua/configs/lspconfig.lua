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
  basedpyright = {
    settings = {
      basedpyright = {
        -- Using Ruff's import organizer
        disableOrganizeImports = true,
        autoSearchPaths = true,
        analysis = {
          typeCheckingMode = "standard",
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end
    if client.name == "ruff" then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end
  end,
  desc = "LSP: Disable hover capability from Ruff",
})
