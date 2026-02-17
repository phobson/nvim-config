return {
    "nvim-tree/nvim-tree.lua",
    verision = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                adaptive_size = true,
            },
            filters = {
                dotfiles = false,
                git_ignored = false,
                custom = {
                    "__pycache__",
                    ".pytest_cache",
                    ".ruff_cache",
                    "__azurite_db_blob__.json",
                    "__azurite_db_blob_extent__.json",
                    "__azurite_db_table__.json",
                    ".venv",
                    "__blobstorage__",
                    ".vscode",
                    ".git"
                },
            },
            renderer = {
                full_name = true,
                group_empty = true,
                indent_markers = { enable = true },
                icons = {
                    git_placement = "signcolumn",
                    show = { folder_arrow = true },
                },
            },
            actions = {
                change_dir = {
                    enable = false,
                    restrict_above_cwd = true,
                },
            },
        })
    end,
}
