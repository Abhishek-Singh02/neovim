return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            signs = {
                add = { text = "▎" },
                change = { text = "▎" },
                delete = { text = "" },
                topdelete = { text = "" },
                changedelete = { text = "▎" },
                untracked = { text = "▎" },
            },
        },
        keys = {
            { "<leader>hs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage hunk" },
            { "<leader>hr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset hunk" },
            { "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk" },
            { "<leader>hb", "<cmd>Gitsigns blame_line<cr>", desc = "Blame line" },
            { "<leader>hd", "<cmd>Gitsigns diffthis<cr>", desc = "Diff this" },
            { "]h", "<cmd>Gitsigns nav_hunk next<cr>", desc = "Next hunk" },
            { "[h", "<cmd>Gitsigns nav_hunk prev<cr>", desc = "Prev hunk" },
        },
    },
}
