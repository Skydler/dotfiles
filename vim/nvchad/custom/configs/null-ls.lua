-- Built-in sources
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {
	b.formatting.stylua,
	b.formatting.isort,
	b.formatting.black.with({
		extra_args = { "--line-length", "120" },
	}),
	b.formatting.prettierd,
	b.formatting.terraform_fmt,

	b.diagnostics.flake8.with({
		extra_args = { "--max-line-length", "120" },
	}),
	-- b.diagnostics.eslint_d,
	-- b.diagnostics.ruff,
	b.diagnostics.hadolint,
}

null_ls.setup({
	sources = sources,
	on_attach = function(client)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
		end
	end,
})
