return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = true,
            integrations = {
                blink_cmp = true,
                snacks = true,
                noice = true,
                neotree = true,
                mason = true,
                mini = true,
                which_key = true,
                dashboard = true,
                treesitter = true,
                gitsigns = true,
                markdown = true,
            },
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
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
}
