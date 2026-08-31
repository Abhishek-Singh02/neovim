return {
    {
        "vuki656/package-info.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        ft = "json",
        opts = {},
        keys = {
            { "<leader>ns", function() require("package-info").show() end, desc = "Show package versions" },
            { "<leader>nu", function() require("package-info").update() end, desc = "Update package" },
            { "<leader>nc", function() require("package-info").change_version() end, desc = "Change version" },
            { "<leader>nd", function() require("package-info").delete() end, desc = "Delete package" },
        },
    },
}
