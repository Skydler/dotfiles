-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M = {
  base46 = {
    theme = "everblush",

    hl_override = {
      Comment = { italic = true },
      ["@comment"] = { italic = true },
      TelescopeSelection = {
        bg = "lightbg",
      },
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

    statusline = {
      theme = "vscode_colored",
      separator_style = "default",
    },
  },

  nvdash = {
    load_on_startup = true,
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
