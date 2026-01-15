return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        opts = {
            close_if_last_window = true,
            git_status_async = false,
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                hijack_netrw_behavior = "open_current",
                use_libuv_file_watcher = true,
            },
        },
        keys = {
            { "<leader>fe", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree" },
            { "<leader>e", false },
        },
    }
}
