-- Requires ripgrep >= 14 (15+ recommended) and Neovim >= 0.11.
-- Buffer-local keys use <localleader>, set in lua/config/options.lua.
return {
    {
        "MagicDuck/grug-far.nvim",
        cmd = { "GrugFar", "GrugFarWithin" },
        opts = {},
        keys = {
            { "<leader>sr", "<cmd>GrugFar<cr>", desc = "Search and replace (project)" },
            { "<leader>sr", "<cmd>GrugFarWithin<cr>", mode = "v", desc = "Search and replace (selection)" },
        },
    },
}
