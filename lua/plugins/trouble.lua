return {
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        opts = {},
        keys = {
            { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
            { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer diagnostics" },
            { "<leader>xs", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
            { "<leader>xl", "<cmd>Trouble lsp toggle win.position=right<cr>", desc = "LSP refs/defs" },
            { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location list" },
            { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix list" },
        },
    },
}
