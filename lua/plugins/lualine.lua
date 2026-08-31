return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        event = "VeryLazy",
        opts = {
            options = {
                -- catppuccin ships catppuccin-nvim / -mocha / -latte / ...;
                -- there is no plain "catppuccin" theme, and lualine silently
                -- falls back to "auto" when it cannot find one.
                -- catppuccin-nvim follows whatever flavour is active.
                theme = "catppuccin-nvim",
                globalstatus = true,
                disabled_filetypes = {
                    statusline = {
                        "dashboard",
                        "alpha",
                    },
                },
                section_separators = "",
                component_separators = "",
            },
            sections = {
                lualine_a = {
                    { "mode", icons_enabled = true },
                },
                lualine_b = {
                    "branch",
                    "diff",
                    "diagnostics",
                },
                lualine_c = {
                    { "filename", path = 1 },
                },
            },
        },
    }
}
