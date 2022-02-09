local M = {}

M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
      "json",
      "http",
      "make",
      "yaml",
      "toml",
      "markdown",
      "dockerfile",
      "bash",
      "python",
      "javascript",
      "html",
      "css",
      "go",
   },
}

M.nvimtree = {
  auto_close = true,
  git = {
     enable = true,
  },
}

M.cmp = {
   sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer", keyword_length = 4},
      { name = "nvim_lua" },
      { name = "path" },
   },
}

return M
