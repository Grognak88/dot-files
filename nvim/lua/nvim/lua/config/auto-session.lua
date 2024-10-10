local auto_session = require("auto-session")

local function change_nvim_tree_dir()
	local nvim_tree = require("nvim-tree")
	nvim_tree.change_dir(vim.fn.getcwd())
end

auto_session.setup({
	auto_restore_enabled = false,
	auto_session_supress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
	post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
})

local keymap = vim.keymap

keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for current root directory" })
