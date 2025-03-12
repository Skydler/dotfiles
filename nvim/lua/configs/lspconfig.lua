-- LSP configs
-- :help lspconfig-all
local configs = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

local function rename_file()
  local source_file = vim.api.nvim_buf_get_name(0)
  local target_file

  vim.ui.input({ prompt = "Target : ", completion = "file", default = source_file }, function(input)
    target_file = input
  end)

  local params = {
    command = "_typescript.applyRenameFile",
    arguments = { { sourceUri = source_file, targetUri = target_file } },
  }

  vim.lsp.util.rename(source_file, target_file)
  vim.lsp.buf.execute_command(params)
end

local servers = {
  html = {},
  cssls = {},
  bashls = {},
  gopls = {},
  yamlls = {},
  astro = {},
  tailwindcss = {},
  terraformls = {
    filetypes = { "hcl", "terraform", "tf" },
  },
  ts_ls = {
    init_options = {
      hostInfo = "neovim",
      preferences = {
        providePrefixAndSuffixTextForRename = false,
      },
    },
    commands = {
      RenameFile = {
        rename_file,
        description = "Rename File",
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

--fix Terraform and hcl comment string
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("FixTerraformCommentString", { clear = true }),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "# %s"
  end,
  pattern = { "terraform", "hcl" },
})

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
