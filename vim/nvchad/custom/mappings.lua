---@type MappingsTable
local M = {}

M.disabled = {
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
  },

  n = {
    -- General
    ["<C-s>"] = "",
    ["<leader>b"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",

    -- Lspconfig
    ["<leader>ra"] = "",

    -- telescope git status
    ["<leader>gt"] = "",
    ["<leader>ma"] = "",

    -- WhichKey
    ["<leader>wK"] = "",
    ["<leader>wk"] = "",
  },
}

M.general = {
  n = {
    ["<space>"] = { "za", "Toggle folding" },

    ["<C-e>"] = { "<cmd> tabn <CR>", "Next tab" },
    ["<C-q>"] = { "<cmd> tabp <CR>", "Previous tab" },
    ["<leader>g"] = { "<cmd> G <CR>" },

    ["<TAB>"] = { "<cmd> bnext <CR>", "Next buffer" },
    ["<S-TAB>"] = { "<cmd> bprev <CR>", "Previous buffer" },
  },
}

M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["gc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },

  v = {
    ["gc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>rn"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "lsp rename",
    },
  },
}

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeFindFile <CR> <cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },
}

M.telescope = {
  n = {
    ["<leader>fr"] = { "<cmd> Telescope resume <CR>", "   Resume last search" },
    ["<leader>fc"] = { "<cmd> Telescope commands <CR>", "   List all vim commands" },
    ["<leader>fs"] = { "<cmd> Telescope treesitter <CR>", "   Search by outline in buffer" },
    ["<leader>fl"] = { "<cmd> Telescope <CR>", "List all Telescope lists" },
    ["<leader>fm"] = { "<cmd> Telescope marks <CR>", "Telescope Marks" },
  },
}

return M
