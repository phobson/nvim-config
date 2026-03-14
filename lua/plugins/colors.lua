local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
end
return {
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
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
            })
        end,
    },
    {
        "ribru17/bamboo.nvim",
        name = "bamboo",
        lazy = true,
        config = function()
            require("bamboo").setup({
                transparent = true,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = true,
        config = function()
            require("tokyonight").setup({
                transparent = true
            })
        end
    },
    {
        "neanias/everforest-nvim",
        name = "everforest",
        lazy = true
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        lazy = true
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = true
    },
    {
        "tahayvr/matteblack.nvim",
        name = "matteblack",
        lazy = true
    },
    {
        "EdenEast/nightfox.nvim",
        name = "nordfox",
        lazy = true
    },
    {
        "gthelding/monokai-pro.nvim",
        name = "monokai-pro",
        lazy = true,
        config = function()
            require("monokai-pro").setup({
                filter = "ristretto",
                override = function()
                    return {
                        NonText = { fg = "#948a8b" },
                        MiniIconsGrey = { fg = "#948a8b" },
                        MiniIconsRed = { fg = "#fd6883" },
                        MiniIconsBlue = { fg = "#85dacc" },
                        MiniIconsGreen = { fg = "#adda78" },
                        MiniIconsYellow = { fg = "#f9cc6c" },
                        MiniIconsOrange = { fg = "#f38d70" },
                        MiniIconsPurple = { fg = "#a8a9eb" },
                        MiniIconsAzure = { fg = "#a8a9eb" },
                        MiniIconsCyan = { fg = "#85dacc" },
                    }
                end
            })
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = true,
        config = function()
            require("rose-pine").setup({
                variant = "dawn",
            })
        end
    },
    {
        "kepano/flexoki-neovim",
        name = "flexoki-light",
        lazy = true,
    },
    {
        "rgarofano/omarchy-theme.nvim",
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            -- theme = "catppuccin",
        },
    },
}
