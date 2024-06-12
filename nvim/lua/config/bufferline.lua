require("bufferline").setup({
	options = {
		mode = "tabs",
		separator_style = "slant",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = true,
			},
		},
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
})
