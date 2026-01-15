return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            dashboard = true,
            mason = true,
            mini = true,
            neotree = true,
            noice = true,
            snacks = true,
            which_key = true,
            custom_highlights = function(colors)
                local u = require("catppuccin.utils.colors")
                return {
                    CursorLine = {
                        bg = u.lighten(colors.surface0, 0.90, colors.overlay1),
                    },
                    Visual = {
                        fg = colors.text,
                        bg = u.lighten(colors.mantle, 0.10, colors.overlay1),
                    },
                }
            end,
            transparent_background = true,
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    }
}
