return {
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },

        version = "1.*",

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = {
                preset = "default",
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
                ["<C-e>"] = { "cancel", "fallback" },
                ["<CR>"] = { "select_and_accept", "fallback" },
                ["<Esc>"] = { "cancel", "fallback" },
            },

            appearance = {
                nerd_font_variant = "mono",
            },

            completion = {
                menu = { border = "single" },
                documentation = { auto_show = false, window = { border = "single" } },
                list = {
                    selection = { preselect = false, auto_insert = true },
                },
            },
            signature = { window = { border = "single" } },

            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" },
        },
        opts_extend = { "sources.default" },
    },
}
