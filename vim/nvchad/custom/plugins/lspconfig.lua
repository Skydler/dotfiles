-- LSP configs
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local M = {}

M.setup_lsp = function(attach, capabilities)
	local lspconfig = require("lspconfig")
	-- lspservers with default config
	local servers = {
		-- Web
		"tsserver",
		"cssls",
		"html",

		-- Rest
		"bashls",
		"intelephense",
		"pyright",
		"terraformls",
		"yamlls",
	}

	lspconfig.pyright.setup({
		settings = {
			analysis = {
				typeCheckingMode = "off",
			},
		},
	})

	for _, lsp in ipairs(servers) do
		lspconfig[lsp].setup({
			on_attach = attach,
			capabilities = capabilities,
		})
	end
end

return M
