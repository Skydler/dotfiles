-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type HLTable
M.override = {
	CursorLine = {
		bg = "black2",
	},
	Comment = {
		italic = true,
	},
}

---@type HLTable
M.add = {
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

	diffAdded = {
		fg = "green",
	},

	diffRemoved = {
		fg = "red",
	},
}

return M
