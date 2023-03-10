-- stylua default
--[[ local colors = { ]]
--[[   blue   = '#80a0ff', ]]
--[[   cyan   = '#79dac8', ]]
--[[   black  = '#24283b', ]]
--[[   white  = '#ffffff', ]]
--[[   red    = '#ff5189', ]]
--[[   violet = '#d183e8', ]]
--[[   grey   = '#32374c', ]]
--[[   insert = '#00FFAB', ]]
--[[   visual = '#FFCA03', ]]
--[[   replace = '#FF008E', ]]
--[[   normal = '#E94560' ]]
--[[ } ]]
--[[ color onedark deep ]]
local colors = {
	blue = "#54b0fd",
	cyan = "#34bfd0",
	black = "#21283b",
	white = "#93a4c3",
	light = "#fefefe",
	red = "#f65866",
	violet = "#c75ae8",
	grey = "#2a324a",
	insert = "#34bfd0",
	visual = "#8bcd5b",
	replace = "#992525",
	normal = "#dd9046",
}

--[[ normal = '#4649FF' ]]

local bubbles_theme = {
	normal = {
		a = { fg = colors.light, bg = colors.normal },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.black, bg = colors.black },
	},

	insert = { a = { fg = colors.black, bg = colors.insert } },
	visual = { a = { fg = colors.black, bg = colors.visual } },
	replace = { a = { fg = colors.whive, bg = colors.replace } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.black },
	},
}

local sections = {
	lualine_a = {
		{ "mode", separator = { left = "" }, right_padding = 2 },
		--[[ { "mode", separator = { left = "" }, right_padding = 2 }, ]]
	},
	lualine_b = {
		{
			"filename",
			symbols = {
				modified = " ●", -- Text to show when the buffer is modified
				alternate_file = "#", -- Text to show to identify the alternate file
				directory = "", -- Text to show when the buffer is a directory
			},
		},
		"branch",
	},
	lualine_c = { "filename" },
	lualine_x = { "fileformat" },
	lualine_y = { "filetype", "encoding" },
	lualine_z = {
		{ "location", separator = { right = "" }, left_padding = 2 },
		--[[ { "location", separator = { right = "" }, left_padding = 2 }, ]]
	},
}

require("lualine").setup({
	options = {
		theme = bubbles_theme,
		component_separators = { left = "", right = "", right_padding = 4, left_padding = 4 },
		section_separators = { left = "", right = "" },
		--[[ component_separators = { left = "->", right = "<-" }, ]]
		--[[ section_separators = { left = "", right = "" }, ]]
		disabled_filetypes = {
			"NvimTree",
			"Trouble",
			"alpha",
		},
	},
	sections = sections,
	inactive_sections = sections,
	tabline = {},
	extensions = {},
})
