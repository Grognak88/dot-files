local auto_session = require("auto-session")

auto_session.setup({
  auto_restore_enabled = false,
  auto_session_supress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" }
})

local keymap = vim.keymap

keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for current root directory" })
