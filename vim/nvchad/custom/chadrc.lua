local M = {}

local plugin_conf = require("custom.plugins.configs")
local mason_packages = require("custom.plugins.mason")
local userPlugins = require("custom.plugins")

M.options = {}

M.ui = {
	theme = "doomchad",
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

M.plugins = {

	remove = {
		"max397574/better-escape.nvim",
	},

	override = {
		["kyazdani42/nvim-tree.lua"] = plugin_conf.nvimtree,
		["nvim-treesitter/nvim-treesitter"] = plugin_conf.treesitter,
		["hrsh7th/nvim-cmp"] = plugin_conf.cmp,
		["NvChad/nvterm"] = plugin_conf.nvterm,
		["NvChad/ui"] = plugin_conf.chadui,
		["williamboman/mason.nvim"] = mason_packages,
	},

	user = userPlugins,
}

M.mappings = require("custom.mappings")

return M
