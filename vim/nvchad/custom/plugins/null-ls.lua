-- Built-in sources
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

local null_ls = require("null-ls")
local b = null_ls.builtins

local sources = {
	b.formatting.stylua,
	b.formatting.black.with({
		extra_args = { "--line-length", "120" },
	}),
	b.formatting.prettierd,
	b.formatting.terraform_fmt,

	b.diagnostics.flake8.with({
		extra_args = { "--max-line-length", "120" },
	}),
	b.diagnostics.eslint_d,
	b.diagnostics.hadolint,
}

local M = {}

M.setup = function()
	null_ls.setup({
		sources = sources,
		on_attach = function(client)
			if client.server_capabilities.documentFormattingProvider then
				vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
			end
		end,
	})
end

return M
