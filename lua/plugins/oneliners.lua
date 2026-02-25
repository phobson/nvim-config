return {
    { -- css colors
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end,
    },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    { "ThePrimeagen/vim-be-good" },
}
