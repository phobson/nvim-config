return {
    { "tpope/vim-fugitive" }, -- git
    { "lewis6991/gitsigns.nvim" },
    { -- css colors
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end,
    },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    { "ThePrimeagen/vim-be-good" },
}
