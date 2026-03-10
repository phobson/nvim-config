require("config.options")
require("config.keybinds")
require("config.lazy")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

if package.config:sub(1, 1) == "/" then
    -- not windows
	vim.cmd.colorscheme("everforest")
else
    -- windows
	vim.cmd.colorscheme("onedark")
end
