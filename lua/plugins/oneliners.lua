return {
    {  -- git
	'tpope/vim-fugitive',
    },
    {  -- css colors
	"brenoprata10/nvim-highlight-colors",
	config = function()
	    require("nvim-highlight-colors").setup({})
	end
    },
    { "nvim-tree/nvim-web-devicons", lazy = true }
}
