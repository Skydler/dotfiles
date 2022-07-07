local M = {}

M.disabled = {
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
  },

  n = {
    ["<C-s>"] = "",
    ["<C-c>"] = "",

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
  }
}

M.general = {
  n = {
    ["<space>"] = {"za", "Toggle folding"},

    ["<C-e>"] = {"gt", "Next tab"},
    ["<C-q>"] = {"gT", "Previos tab"},
  },
}

M.lspconfig = {
  n = {
    ["<leader>rn"] = {
      function()
        require("nvchad.ui.renamer").open()
      end,
      "   lsp rename",
    },
  }
}

M.telescope = {
  n = {
    ["<leader>fr"] = { "<cmd> Telescope resume <CR>", "   Resume last search" },
    ["<leader>fc"] = { "<cmd> Telescope commands <CR>", "   List all vim commands" },
    ["<leader>fs"] = { "<cmd> Telescope treesitter <CR>", "   Search by outline in buffer" },
    ["<leader>fl"] = { "<cmd> Telescope <CR>", "List all Telescope lists" },
  }
}

return M
