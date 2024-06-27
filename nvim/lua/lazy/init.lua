require("config.keymaps")
require("config.vim-options")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "plugins" },
	{ import = "plugins.lsp" },
}, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

require("config.neoscroll")
require("config.npairs")
require("config.rose-pine-theme")
require("config.telescope")
require("config.alpha-dash")
require("config.auto-session")
require("config.lualine")
require("config.treesitter")
require("config.auto-cmp")
require("config.auto-pairs")
require("config.comment")
require("config.todo-comments")
require("config.substitute")
require("config.lsp.mason")
require("config.lsp.lspconfig")
require("config.nvim-tree")
require("config.bufferline")
require("config.formatting")
require("trouble").setup()
require("config.linting")
require("config.gitsigns")
