require("lint").linters_by_ft = {
  python = { "flake8" },
  javascript = { { "eslint_d", "eslint" } },
  javascriptreact = { { "eslint_d", "eslint" } },
  typescript = { { "eslint_d", "eslint" } },
  typescriptreact = { { "eslint_d", "eslint" } },
}

vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
