return {
    {
        "nvim-telescope/telescope.nvim",
        version = "v0.2.1",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        defaults = {
            find_command = { "rg", "--hidden", "--ignore-case" },
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = {
                        ".git/*",
                        ".venv",
                        "uv.lock",
                        "__pycache__",
                        ".ruff_cache",
                        "__queuestorage__",
                        "__blobstorage__",
                        "pytest_cache"
                    }
                },
                pickers = {
                    find_files = { hidden = true, no_ignore = true },
                    live_grep = { hidden = true },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
