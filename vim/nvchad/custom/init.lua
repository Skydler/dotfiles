require "custom.mappings"

local opt = vim.opt
local cmd = vim.cmd

opt.foldmethod="indent"
opt.foldlevelstart=99
-- opt.swapfile=false

cmd("command W SudaWrite")

cmd([[
let g:copilot_no_tab_map = v:true
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
]])
