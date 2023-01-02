local fterm = require("FTerm")

fterm.setup({
	border = "single",
	dimensions = {
		height = 0.7,
		width = 0.7,
	},
})

-- keybindings
vim.keymap.set("n", "<F4>", '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<F4>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
