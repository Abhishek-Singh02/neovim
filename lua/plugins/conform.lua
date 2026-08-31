return {
    {
        "stevearc/conform.nvim",
        opts = {},
        config = function()
            local confrom = require("conform")
            local util = require("conform.util")
            confrom.setup({
                log_level = vim.log.levels.DEBUG,
                formatters = {
                    eslint_d = {
                        meta = {
                            url = "https://github.com/mantoni/eslint_d.js/",
                            description = "Like ESLint, but faster.",
                        },
                        command = util.from_node_modules("eslint_d"),
                        args = { "--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME" },
                        stdin = true,
                        cwd = util.root_file({
                            "package.json",
                        }),
                    },
                },
                formatters_by_ft = {
                    lua = { "stylua" },
                    javascript = { "prettierd", "eslint_d" },
                    typescript = { "prettierd", "eslint_d" },
                    typescriptreact = { "prettierd", "eslint_d" },
                    json = { "prettierd" },
                    jsonc = { "prettierd" },
                    go = { "gofumpt", "goimports" },
                    yaml = { "prettierd" },
                    css = { "prettierd" },
                    html = { "prettierd" },
                    svg = { "prettierd" },
                },
                format_on_save = {
                    timeout_ms = 500,
                    lsp_format = "fallback",
                },
            })
        end,
    },
}
