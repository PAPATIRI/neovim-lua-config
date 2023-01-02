local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
		indicator_style = "│",
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 20,
		diagnostics = false, -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
		always_show_bufferline = true,
	},
	highlights = {
		separator = {
			--[[ fg = "#1f2335", ]]
			--[[ fg = "#979eab", ]]
			fg = "#282c34",
			bg = "#282c34",
		},
		separator_selected = {
			--[[ fg = "#24283b", ]]
			fg = "#282c34",
			bg = "#282c34",
		},
		buffer_selected = {
			--[[ fg = "fg", ]]
			--[[ bg = "#24283b", ]]
			fg = "#979eab",
			bg = "#282c34",
			bold = true,
		},
		background = {
			--[[ bg = "#1f2335", ]]
			bg = "#393e48",
			fg = "#979eab",
		},
		fill = {
			--[[ bg = "#1f2335", ]]
			bg = "#282c34", --ondark theme kitty and neovim theme
		},
	},
})
