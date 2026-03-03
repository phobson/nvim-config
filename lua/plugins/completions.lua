-- Source - https://stackoverflow.com/q/79156660
-- Posted by silfer1200, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-01-25, License - CC BY-SA 4.0

return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "1.9.*",

	---@module "blink.bmp"
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		signature = { enabled = true },
        completion = { documentation = { auto_show = true } },
        fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	-- { "hrsh7th/cmp-nvim-lsp" },
	-- {
	--     "L3MON4D3/LuaSnip",
	--     dependencies = {
	--         "saadparwaiz1/cmp_luasnip",
	--         "rafamadriz/friendly-snippets",
	--     },
	-- },
	-- {
	--     "hrsh7th/nvim-cmp",
	--     config = function()
	--         local cmp = require("cmp")
	--         require("luasnip.loaders.from_vscode").lazy_load()
	--
	--         cmp.setup({
	--             snippet = {
	--                 expand = function(args)
	--                     require("luasnip").lsp_expand(args.body) -- For `luasnip` users
	--                 end,
	--             },
	--             window = {
	--                 completion = cmp.config.window.bordered(),
	--                 documentation = cmp.config.window.bordered(),
	--             },
	--             mapping = cmp.mapping.preset.insert({
	--                 ["<C-b>"] = cmp.mapping.scroll_docs(-4),
	--                 ["<C-f>"] = cmp.mapping.scroll_docs(4),
	--                 ["<C-Space>"] = cmp.mapping.complete(),
	--                 ["<C-e>"] = cmp.mapping.abort(),
	--                 ["<CR>"] = cmp.mapping.confirm({ select = true }),
	--             }),
	--             sources = cmp.config.sources({
	--                 { name = "nvim_lsp" },
	--                 { name = "luasnip" }, -- For luasnip users.
	--             }, {
	--                 { name = "buffer" },
	--             }),
	--         })
	--     end,
	-- },
}
