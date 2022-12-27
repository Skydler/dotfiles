local M = {}

M.disabled = {
	i = {
		["<C-b>"] = "",
		["<C-e>"] = "",
	},

	n = {
		["<C-s>"] = "",
		["<C-c>"] = "",

		-- TAB is = to <C-i> in vim
		["<TAB>"] = "",
		["<S-TAB>"] = "",

		["<leader>n"] = "",
		["<leader>rn"] = "",
		["<leader>tt"] = "",

		-- lsp rename changed to rn
		["<leader>ra"] = "",

		-- tabufline
		["<S-b>"] = "",

		-- cycle through tabs
		["<leader>tp"] = "",
		["<leader>tn"] = "",

		-- telescope git status
		["<leader>gt"] = "",
	},
}

M.general = {
	n = {
		["<space>"] = { "za", "Toggle folding" },

		["<C-e>"] = { "gt", "Next tab" },
		["<C-q>"] = { "gT", "Previos tab" },
		["<leader>g"] = { "<cmd> G <CR> <C-w>H" },
	},
}

M.lspconfig = {
	n = {
		["<leader>rn"] = {
			function()
				require("nvchad_ui.renamer").open()
			end,
			"   lsp rename",
		},
	},
}

M.telescope = {
	n = {
		["<leader>fr"] = { "<cmd> Telescope resume <CR>", "   Resume last search" },
		["<leader>fc"] = { "<cmd> Telescope commands <CR>", "   List all vim commands" },
		["<leader>fs"] = { "<cmd> Telescope treesitter <CR>", "   Search by outline in buffer" },
		["<leader>fl"] = { "<cmd> Telescope <CR>", "List all Telescope lists" },
	},
}

M.nvimtree = {
	n = {
		["<leader>e"] = { "<cmd> NvimTreeFindFile <CR>", "focus nvimtree" },
	},
}

return M
