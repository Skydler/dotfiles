local M = {}

M.ensure_installed = {
	-- Lua
	"lua-language-server",
	"stylua",

	-- Web
	"typescript-language-server",
	"css-lsp",
	"html-lsp",
	"prettierd",

	-- Python
	"pyright",
	"black",

	-- Additionals
	"bash-language-server",
	"intelephense",
	"terraform-ls",
	"yaml-language-server",
	"hadolint",
}

return M
