return {
    {
        "saghen/blink.cmp",
        dependencies = {
            "rafamadriz/friendly-snippets",
            {
                "L3MON4D3/LuaSnip",
                version = "v2.*",
                config = function()
                    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
                end,
            },
        },

        version = "1.*",

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = {
                preset = "default",
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
                -- `accept` only fires when an item is actually selected, so <CR>
                -- stays a newline otherwise. `select_and_accept` would grab the
                -- first item and eat the newline.
                ["<CR>"] = { "accept", "fallback" },

                -- <C-b>/<C-f> scroll the docs window via the `default` preset.
                ["<C-u>"] = { "scroll_signature_up", "fallback" },
                ["<C-d>"] = { "scroll_signature_down", "fallback" },
            },

            appearance = {
                -- Terminal font is "JetBrainsMono Nerd Font" (standard variant),
                -- not "Nerd Font Mono" -- so 'normal', not blink's 'mono' default.
                nerd_font_variant = "normal",
            },

            completion = {
                menu = { border = "rounded" },
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 200,
                    window = { border = "rounded" },
                },
                list = {
                    selection = { preselect = false, auto_insert = false },
                },
            },

            -- Opt-in upstream; without `enabled` the window config below is inert.
            signature = {
                enabled = true,
                window = { border = "rounded", show_documentation = false },
            },

            snippets = { preset = "luasnip" },

            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" },
        },
        opts_extend = { "sources.default" },
    },
}
