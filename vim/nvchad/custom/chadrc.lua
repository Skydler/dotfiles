local M = {}

local plugin_conf = require("custom.plugins.configs")
local userPlugins = require("custom.plugins")

M.options = {}

M.ui = {
	theme = "gruvchad",
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
		["NvChad/nvterm"] = {
			terminals = {
				type_opts = {
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
			},
		},
		["NvChad/ui"] = {
			tabufline = {
				enabled = false,
			},
		},
		["williamboman/mason.nvim"] = {
			ensure_installed = {
				"lua-language-server",
				"stylua",

				"typescript-language-server",
				"css-lsp",
				"html-lsp",

				"bash-language-server",
				"intelephense",
				"pyright",
				"terraform-ls",
				"yaml-language-server",
			},
		},
	},

	user = userPlugins,
}

M.mappings = require("custom.mappings")

return M
