require("config.options")
require("config.keybinds")
require("config.lazy")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- vim.opt.winborder = "rounded"
vim.cmd.colorscheme "everforest"
-- vim.cmd.colorscheme "catppuccin"
