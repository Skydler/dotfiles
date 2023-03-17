-- LSP configs
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {
	-- Web
	"tsserver",
	"cssls",
	"html",
	"volar",
	"tailwindcss",

	"bashls",
	"intelephense",
	"pyright",
	"gopls",
	"terraformls",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig["pyright"].setup({
	on_attach = on_attach,
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
})

lspconfig["volar"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		typescript = {
			tsdk = vim.fn.stdpath("data") .. "/mason/packages/typescript-language-server/node_modules/typescript/lib",
		},
	},
})
