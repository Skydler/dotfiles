return {
  on_attach = function(bufnr)
    local api = require "nvim-tree.api"
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.del("n", "<C-e>", { buffer = bufnr })
  end,
  update_focused_file = {
    enable = false,
  },
  git = {
    enable = true,
    ignore = false,
  },
  filesystem_watchers = {
    enable = true,
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
    add_trailing = true,
    indent_markers = {
      enable = true,
    },
  },
  filters = {
    custom = {
      "^.git$",
    },
  },
}
