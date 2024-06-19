require "nvchad.mappings"

local map = vim.keymap.set
map("n", "<space>", "za", { desc = "Toggle folding" })
map("n", "<C-e>", "<cmd> tabn <CR>", { desc = "Next tab" })
map("n", "<C-q>", "<cmd> tabp <CR>", { desc = "Prev tab" })

-- LSP
map("n", "<leader>rn", function()
  require "nvchad.lsp.renamer"()
end, { desc = "LSP NvRenamer" })

-- Telescope
map("n", "<leader>fr", "<cmd> Telescope resume <CR>", { desc = "   Resume last search" })
map("n", "<leader>fc", "<cmd> Telescope commands <CR>", { desc = "   List all vim commands" })
map("n", "<leader>fs", "<cmd> Telescope treesitter <CR>", { desc = "   Search by outline in buffer" })
map("n", "<leader>fl", "<cmd> Telescope <CR>", { desc = "List all Telescope lists" })
map("n", "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "Telescope Marks" })

-- Bufjump
map("n", "<TAB>", function()
  require("bufjump").forward()
end, { desc = "Next file jump" })
map("n", "<S-TAB>", function()
  require("bufjump").backward()
end, { desc = "Previous file jump" })

-- NvimTree
map("n", "<leader>e", "<cmd> NvimTreeFindFile <CR> <cmd> NvimTreeFocus <CR>", { desc = "Focus file in tree" })

-----------------------------------------------------------------------------------------------------------
local nomap = vim.keymap.del
-- General
nomap("n", "<leader>b")
nomap("n", "<leader>n")

-- Telescope
nomap("n", "<leader>gt")
nomap("n", "<leader>ma")
