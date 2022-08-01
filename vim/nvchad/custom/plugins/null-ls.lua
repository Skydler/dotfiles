-- Built-in sources
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

local null_ls = require("null-ls")
local b = null_ls.builtins

local sources = {
	b.formatting.stylua,
	b.formatting.black,
	b.formatting.prettierd,
	b.formatting.terraform_fmt,

	b.diagnostics.pylint,
	b.diagnostics.eslint_d,
	b.diagnostics.hadolint,
}

local M = {}

M.setup = function()
	null_ls.setup({
		sources = sources,
		on_attach = function(client)
			if client.resolved_capabilities.document_formatting then
				vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
			end
		end,
	})
end

return M
