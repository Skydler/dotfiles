local map = require("core.utils").map

map("n", "<space>", "za")
map("n", "<C-l>", ":<C-u> nohlsearch <CR>")
map("n", "<Tab>", "gt")
map("n", "<S-Tab>", "gT")

-- Telescope
map("n", "<leader>fr", ":Telescope resume <CR>")
map("n", "<leader>fc", ":Telescope commands <CR>")
map("n", "<leader>fs", ":Telescope treesitter<CR>")
map("n", "<leader>fl", ":Telescope <CR>")
