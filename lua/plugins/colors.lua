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
	config = function ()
	    require("everforest").setup({
            transparent_background_level = 0,
            background = "medium",
            inlay_hints_background = "dimmed",
	    })
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = "catppuccin",
	}
    }
}
