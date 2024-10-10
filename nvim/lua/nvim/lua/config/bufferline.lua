require("bufferline").setup({
	options = {
		mode = "buffers",
		separator_style = "slope",
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
