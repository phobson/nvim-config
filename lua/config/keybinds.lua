vim.g.mapleader = " "
vim.g.have_nerd_font = true
-- vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format file using the LSP" })
vim.keymap.set("n", "<leader>wwq", ":wqall<cr>", {desc = "Save everything and quit"})
vim.keymap.set("n", "<leader>www", ":wall<cr>", {desc = "Save everthing"})
vim.keymap.set("n", "<leader>xxx", ":qa!<cr>", {desc = "Bail out! (quit and don't save"})
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle", {desc = "[T]oggle [F]ile Tree"})
vim.keymap.set("n", "<leader>tg", ":NvimTreeFindFile", {desc = "File [T]reem [G]o to file"})
-- vim.keymap.set("n", "<leader>se", function()
-- 	local new_config = not vim.diagnostic.config().virtual_lines
-- 	vim.diagnostic.config({ virtual_lines = new_config })
-- end, { desc = "[s]how [e]rrors on virtual_lines" })
