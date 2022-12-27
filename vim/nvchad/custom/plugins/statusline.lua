local sep_style = vim.g.statusline_sep_style
local separators = (type(sep_style) == "table" and sep_style)
	or require("nvchad_ui.icons").statusline_separators[sep_style]
local sep_l = separators["left"]

return {
	cursor_position = function()
		local left_sep = "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon#" .. " "
		return left_sep .. "%#St_pos_text#" .. " %l:%c "
	end,
}
