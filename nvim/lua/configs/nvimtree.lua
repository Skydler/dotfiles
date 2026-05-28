return {
  on_attach = function(bufnr)
    local api = require "nvim-tree.api"
    api.map.on_attach.default(bufnr)
    vim.keymap.del("n", "<C-e>", { buffer = bufnr })
  end,
  update_focused_file = {
    enable = false,
  },
  git = {
    enable = true,
  },
  filesystem_watchers = {
    enable = true,
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
    git_ignored = false,
    custom = {
      "^.git$",
    },
  },
}
