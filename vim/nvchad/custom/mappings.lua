local map = require("core.utils").map

map("n", "<space>", "za")
map("n", "<C-l>", ":<C-u> nohlsearch <CR>")

-- Telescope
map("n", "<leader>fr", ":Telescope resume <CR>")
map("n", "<leader>fc", ":Telescope commands <CR>")
map("n", "<leader>fl", ":Telescope <CR>")
