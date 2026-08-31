return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            spec = {
                { "<leader>b", group = "buffer" },
                { "<leader>d", group = "diagnostics" },
                { "<leader>f", group = "find/file" },
                { "<leader>g", group = "git" },
                { "<leader>h", group = "git hunks" },
                { "<leader>n", group = "npm" },
                { "<leader>s", group = "search" },
                { "<leader>u", group = "toggle (ui)" },
                { "<leader>w", proxy = "<c-w>", group = "windows" },
                { "<leader>x", group = "trouble" },
                { "<leader><tab>", group = "tabs" },
            },
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
}
