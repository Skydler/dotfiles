local plugin_conf = require("custom.plugins.configs")

return {
	-- Overrides
	["kyazdani42/nvim-tree.lua"] = { override_options = plugin_conf.nvimtree },
	["nvim-treesitter/nvim-treesitter"] = { override_options = plugin_conf.treesitter },
	["hrsh7th/nvim-cmp"] = { override_options = plugin_conf.cmp },
	["NvChad/nvterm"] = { override_options = plugin_conf.nvterm },
	["NvChad/ui"] = { override_options = plugin_conf.chadui },
	["williamboman/mason.nvim"] = { override_options = plugin_conf.mason },

	-- My packages
	["karb94/neoscroll.nvim"] = {
		config = function()
			require("neoscroll").setup({
				hide_cursor = false,
				easing_function = "sine",
				-- Removed "<C-e>" mapping
				mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "zt", "zz", "zb" },
			})
		end,
	},
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("custom.plugins.null-ls").setup()
		end,
	},
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},
	["tpope/vim-surround"] = {},
	["tpope/vim-fugitive"] = {},
	["lambdalisue/suda.vim"] = { cmd = "SudaWrite" },

	-- Removed packages
	["max397574/better-escape.nvim"] = false,
	["folke/which-key.nvim"] = false,
}
