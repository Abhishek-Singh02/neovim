
return {
    {
        "pmizio/typescript-tools.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        config = function()
            local tstools = require("typescript-tools")
            tstools.setup({})
            vim.keymap.set(
                "n",
                "<leader>oi",
                "<CMD>TSToolsOrganizeImports<CR>",
                { desc = "[T]ypescript [O]rganize [I]mports" }
            )
        end,
    },
}
