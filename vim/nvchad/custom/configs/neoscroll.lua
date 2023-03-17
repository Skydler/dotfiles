local neoscroll = require("neoscroll")

neoscroll.setup({
	hide_cursor = false,
	easing_function = "sine",
	-- Removed "<C-e>" mapping
	mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "zt", "zz", "zb" },
})
