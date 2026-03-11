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

local IS_OMARCHY = tonumber(os.getenv("IS_OMARCHY")) == 1

if not IS_OMARCHY then
    if (package.config:sub(1, 1) == "/") then
        -- (WSL)
        vim.cmd.colorscheme("everforest")
    else
        -- (Windows)
        vim.cmd.colorscheme("onedark")
    end
else
    -- OMARCHY sets the them
    local junk = "junk"
end
