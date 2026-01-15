return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        event = "VeryLazy",
        opts = {
            options = {
                theme = "catppuccin",
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
