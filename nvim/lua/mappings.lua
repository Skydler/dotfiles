require "nvchad.mappings"

local map = vim.keymap.set
map("n", "<space>", "za", { desc = "Folding toggle" })
map("n", "<C-e>", "<cmd> tabn <CR>", { desc = "Tab Next tab" })
map("n", "<C-q>", "<cmd> tabp <CR>", { desc = "Tab Prev tab" })

local isLspDiagnosticsVisible = true
map("n", "<leader>dc", function()
  isLspDiagnosticsVisible = not isLspDiagnosticsVisible
  vim.diagnostic.config {
    virtual_text = isLspDiagnosticsVisible,
  }
end, { desc = "Diagnostics Toggle diagnostics virtual text" })
map("n", "<leader>df", "<cmd> lua vim.diagnostic.open_float() <CR>", { desc = "Diagnostics Open float diagnostics" })

-- LSP
map("n", "<leader>rn", function()
  require "nvchad.lsp.renamer"()
end, { desc = "NvChad LSP NvRenamer" })
-- A few more are added here https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/configs/lspconfig.lua
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Implementation" })

-- Telescope: General
map("n", "<leader>fr", "<cmd> Telescope resume <CR>", { desc = "Telsecope Resume last search" })
map("n", "<leader>fc", "<cmd> Telescope commands <CR>", { desc = "Telescope List all vim commands" })
map("n", "<leader>fl", "<cmd> Telescope <CR>", { desc = "Telescope List all Telescope lists" })
map("n", "<leader>fw", "<cmd> Telescope live_grep_args<CR>", { desc = "Telescope live grep with args" })
map("n", "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "Telescope Marks" })
map("n", "<leader>td", "<cmd> TodoTelescope <CR>", { desc = "Telescope TODOs" })
-- Telescope: LSP
map("n", "gr", "<cmd> Telescope lsp_references <CR>", { desc = "Telescope References" })
map("n", "<leader>ld", "<cmd> Telescope diagnostics <CR>", { desc = "Telescope Diagnostics" })
map("n", "<leader>ls", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Telescope Symbols" })

-- Bufjump
map("n", "<TAB>", function()
  require("bufjump").forward()
end, { desc = "JumpList Next file jump" })
map("n", "<S-TAB>", function()
  require("bufjump").backward()
end, { desc = "JumpList Previous file jump" })

-- NvimTree
map("n", "<leader>e", "<cmd> NvimTreeFindFile <CR> <cmd> NvimTreeFocus <CR>", { desc = "NvimTree Focus file in tree" })

-- Fugitive
map("n", "<leader>gl", "<cmd> 0Gclog <CR>", { desc = "Fugitive Git log current file" })

-- Gitsigns
map("n", "<leader>rh", function()
  require("gitsigns").reset_hunk()
end, { desc = "GitSigns Reset Hunk" })
map("n", "<leader>ph", function()
  require("gitsigns").preview_hunk()
end, { desc = "GitSigns Preview Hunk" })
map("n", "<leader>gb", function()
  require("gitsigns").blame_line()
end, { desc = "GitSigns Blame Line" })
map("n", "<A-[>", function()
  require("gitsigns").prev_hunk()
end, { desc = "GitSigns Prev Hunk" })
map("n", "<A-]>", function()
  require("gitsigns").next_hunk()
end, { desc = "GitSigns Next Hunk" })

-----------------------------------------------------------------------------------------------------------
---                                       Keymaps that are removed                                      ---

local nomap = vim.keymap.del
-- General
nomap("n", "<leader>b")
nomap("n", "<leader>n")

-- Telescope
nomap("n", "<leader>gt")
