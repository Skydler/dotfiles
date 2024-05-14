-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everblush",
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

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
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

  term = {
    float = {
      relative = "editor",
      row = 0.1,
      col = 0.1,
      width = 0.8,
      height = 0.7,
      border = "single",
    },
    horizontal = { location = "rightbelow", split_ratio = 0.4 },
  },
}

return M
