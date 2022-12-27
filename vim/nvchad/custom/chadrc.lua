local M = {}

M.options = {}

M.ui = {
	theme = "kanagawa",
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
}

M.plugins = require("custom.plugins")
M.mappings = require("custom.mappings")

return M
