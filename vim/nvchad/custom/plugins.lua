local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		dependencies = "tpope/vim-fugitive",
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile" },
		opts = overrides.nvimtree,
	},

	{
		"hrsh7th/nvim-cmp",
		opts = overrides.cmp,
		dependencies = {
			{
				"zbirenbaum/copilot-cmp",
				config = function()
					require("copilot_cmp").setup()
				end,
			},
		},
	},

	{
		"NvChad/nvterm",
		opts = overrides.nvterm,
	},

	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				names = false,
			},
		},
	},

	{
		"folke/which-key.nvim",
		enabled = false,
	},

	-- New not in NvChad Plugins
	{
		"karb94/neoscroll.nvim",
		event = "BufEnter",
		config = function()
			require("custom.configs.neoscroll")
		end,
	},

	{
		"kylechui/nvim-surround",
		event = "InsertEnter",
	},

	{
		"tpope/vim-fugitive",
		event = "BufEnter",
	},

	{
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		opts = overrides.copilot,
	},

	{
		"lambdalisue/suda.vim",
		cmd = "SudaWrite",
	},

	{
		"danymat/neogen",
		enabled = false,
		cmd = "Neogen",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = function()
			require("custom.configs.neogen")
		end,
	},
}

return plugins
