return {
    { "tpope/vim-fugitive" }, -- git
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
            vim.keymap.set("n", "<leader>gdi", ":Gitsigns preview_hunk_inline<CR>", { desc = "[g]it [d]iff [i]nline" })
            vim.keymap.set("n", "<leader>gbi", ":Gitsigns toggle_current_line_blame<CR>", { desc = "[g]it [b]lame [i]nline" })
        end,
    },
    { -- css colors
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end,
    },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    { "ThePrimeagen/vim-be-good" },
}
