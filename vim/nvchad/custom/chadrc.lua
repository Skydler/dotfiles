---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everblush",
  hl_override = {},
  hl_add = {
    CursorLine = {
      bg = "statusline_bg",
    },

    TabLineFill = {
      fg = "",
      bg = "",
    },

    TabLine = {
      fg = "",
      bg = "",
    },

    TabLineSel = {
      fg = "green",
      bg = "grey",
    },
  },
  lsp_semantic_tokens = true,

  tabufline = {
    enabled = false,
  },

  telescope = {
    style = "bordered",
  },

  statusline = {
    theme = "vscode_colored",
    separator_style = "default",
  },
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
