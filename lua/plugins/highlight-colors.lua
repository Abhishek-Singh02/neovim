return {
    {
        "brenoprata10/nvim-highlight-colors",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            render = "virtual",
            virtual_symbol = "■",
            virtual_symbol_position = "inline",
            -- off by default upstream; required for `bg-blue-500` style classes
            enable_tailwind = true,
        },
    },
}
