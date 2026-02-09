local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
end
return {
    { "catppuccin/nvim", lazy = true, name = "catppuccin", priority = 1000 },
    -- {
    --     "folke/tokyonight.nvim",
    --     config = function ()
    --         vim.cmd.colorscheme = "moon"
    --     end
    -- },
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("everforest").setup({
                -- nothing here yet
            })
        end,
    },
    {
        "navarasu/onedark.nvim",
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("onedark").setup({
                -- nothing here yet
                style = "dark",
            })
            require("onedark").load()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "catppuccin",
        },
    },
    {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
        ---@type solarized.config
        opts = {},
        config = function(_, opts)
            vim.o.termguicolors = true
            vim.o.background = "dark"
            require("solarized").setup(opts)
        end,
    },
}
