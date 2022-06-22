local M = {}

M.disabled = {
  i = {
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },

  n = {
    ["<C-h>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-s>"] = "",
    ["<C-c>"] = "",

    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<leader>tt"] = "",

    ["<leader>ra"] = "",

    ["<S-b>"] = "",
    ["<TAB>"] = "",
    ["<S-Tab>"] = "",
  }
}

M.general = {
  i = {
    ["<A-h>"] = { "<C-w>h", "  move left" },
    ["<A-l>"] = { "<C-w>l", " move right" },
    ["<A-j>"] = { "<C-w>j", " move down" },
    ["<A-k>"] = { "<C-w>k", " move up" },
  },

  n = {
    ["<A-h>"] = { "<C-w>h", " window left" },
    ["<A-l>"] = { "<C-w>l", " window right" },
    ["<A-j>"] = { "<C-w>j", " window down" },
    ["<A-k>"] = { "<C-w>k", " window up" },

    ["<space>"] = {"za", "Toggle folding"},
    ["<C-l>"] = {"<cmd> nohlsearch <CR>", "Clear screen (kinda)"},

    ["<C-k>"] = {"gt", "Next tab"},
    ["<C-j>"] = {"gT", "Previos tab"},
  },
}

M.lspconfig = {
  n = {
    ["<leader>rn"] = {
       function()
          vim.lsp.buf.rename()
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
