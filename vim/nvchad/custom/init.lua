require "custom.mappings"

local opt = vim.opt
local cmd = vim.cmd

opt.foldmethod="indent"
opt.foldlevelstart=99
-- opt.swapfile=false

cmd "command W SudaWrite"
