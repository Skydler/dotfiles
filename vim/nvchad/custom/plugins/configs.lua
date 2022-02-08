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

return M
