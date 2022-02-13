require "custom.mappings"

local opt = vim.opt
local cmd = vim.cmd

opt.foldmethod="indent"
opt.foldlevelstart=99
-- opt.swapfile=false

vim.g.copilot_no_tab_map = true

cmd "command W SudaWrite"
cmd "imap <silent><script><expr> <C-J> copilot#Accept()"
