return {
    {
        "nvim-treesitter/nvim-treesitter-context",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            max_lines = 3,
            multiline_threshold = 1,
        },
        keys = {
            {
                "[c",
                function() require("treesitter-context").go_to_context(vim.v.count1) end,
                desc = "Jump to context",
            },
        },
    },
}
