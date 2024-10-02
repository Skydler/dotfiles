require "nvchad.options"

vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 99
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.mousemodel = "extend"
vim.opt.relativenumber = true

-- Don't touch unnamed register when pasting over visual selection
vim.keymap.set("x", "<leader>p", function()
  return 'pgv"' .. vim.v.register .. "y"
end, { remap = false, expr = true })
