-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M = {
  base46 = {
    theme = "nightfox",
    integrations = {
      "diffview",
    },

    hl_override = {},
    hl_add = {
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
  },

  ui = {
    tabufline = {
      enabled = false,
    },

    cmp = {
      format_colors = {
        tailwind = true,
      },
    },

    telescope = {
      style = "bordered",
    },
  },

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
