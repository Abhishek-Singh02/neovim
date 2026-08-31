return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",
        lazy = false,
        event = {
            "BufReadPost",
            "BufNewFile",
        },
        dependencies = {
            { "nvim-treesitter/nvim-treesitter-textobjects" },
        },
        keys = {
            { "<C-Space>", desc = "Increment selection" },
            { "<bs>", desc = "Decrement selection", mode = "x" },
        },
        cmd = { "TSUpdateSync" },
        config = function()
            require("nvim-treesitter.configs").setup({
                sync_install = false,
                auto_install = true,
                ensure_installed = {
                    "bash",
                    "c",
                    "fish",
                    "lua",
                    "luadoc",
                    "luap",
                    "query",
                    "regex",
                    "vim",
                    "vimdoc",
                    "html",
                    "css",
                    "scss",
                    "javascript",
                    "typescript",
                    "tsx",
                    "json",
                    "jsonc",
                    "yaml",
                    "toml",
                    "markdown",
                    "markdown_inline",
                    "graphql",
                    "prisma",
                    "sql",
                    "dockerfile",
                    "http",
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-Space>",
                        node_incremental = "<C-Space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = {
                    enable = true,
                },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ap"] = "@parameter.outer",
                            ["ip"] = "@parameter.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                        },
                    },
                },
            })
        end,
    }
}
