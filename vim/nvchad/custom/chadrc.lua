---@type ChadrcConfig
local M = {}

local highlights = require("custom.highlights")

M.options = {}

M.ui = {
	theme = "kanagawa",
	hl_override = highlights.override,
	hl_add = highlights.add,

	tabufline = {
		enabled = false,
	},

	statusline = {
		theme = "default",
		separator_style = "round",
	},
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
