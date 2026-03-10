return {
    { -- css colors
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end,
    },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    { "ThePrimeagen/vim-be-good" },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
}
