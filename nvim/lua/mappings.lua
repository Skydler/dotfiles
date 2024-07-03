require "nvchad.mappings"

local map = vim.keymap.set
map("n", "<space>", "za", { desc = "Toggle folding" })
map("n", "<C-e>", "<cmd> tabn <CR>", { desc = "Next tab" })
map("n", "<C-q>", "<cmd> tabp <CR>", { desc = "Prev tab" })

local isLspDiagnosticsVisible = true
map("n", "<leader>dc", function()
  isLspDiagnosticsVisible = not isLspDiagnosticsVisible
  vim.diagnostic.config {
    virtual_text = isLspDiagnosticsVisible,
  }
end, { desc = "Toggle diagnostics virtual text" })
map("n", "<leader>df", "<cmd> lua vim.diagnostic.open_float() <CR>", { desc = "Open float diagnostics" })

-- LSP
map("n", "<leader>rn", function()
  require "nvchad.lsp.renamer"()
end, { desc = "LSP NvRenamer" })

-- Telescope: General
map("n", "<leader>fr", "<cmd> Telescope resume <CR>", { desc = "   Resume last search" })
map("n", "<leader>fc", "<cmd> Telescope commands <CR>", { desc = "   List all vim commands" })
map("n", "<leader>fl", "<cmd> Telescope <CR>", { desc = "List all Telescope lists" })
map("n", "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "Telescope Marks" })
map("n", "<leader>td", "<cmd> TodoTelescope <CR>", { desc = "Telescope TODOs" })
-- Telescope: LSP
map("n", "<leader>lr", "<cmd> Telescope lsp_references <CR>", { desc = "Telescope References" })
map("n", "<leader>ld", "<cmd> Telescope lsp_definitions <CR>", { desc = "Telescope Definitions" })
map("n", "<leader>le", "<cmd> Telescope diagnostics <CR>", { desc = "Telescope Diagnostics" })
map("n", "<leader>ls", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Telescope Symbols" })

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
