-- `gc`/`gcc` are core operators as of Neovim 0.10 -- no plugin needed for the
-- operator itself. ts-comments only fixes `commentstring` per treesitter node,
-- which is what makes JSX produce `{/* */}` instead of `//`.
return {
    {
        "folke/ts-comments.nvim",
        event = "VeryLazy",
        opts = {},
        enabled = vim.fn.has("nvim-0.10.0") == 1,
    },
}
