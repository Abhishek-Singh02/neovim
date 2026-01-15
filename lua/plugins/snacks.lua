return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            bufdelete = { enabled = true },
            notifier = { enabled = true },
            bigfile = { enabled = true },
            scroll = { enabled = true },
            dashboard = {
                enabled = true,
                preset = {
                    keys = {
                        { icon = " ", key = "ff", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                        { icon = " ", key = "nf", desc = "New File", action = ":ene | startinsert" },
                        { icon = " ", key = "lg", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                        { icon = " ", key = "of", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                        { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                }
            },
            lazygit = { 
                enabled = true,
                configure =  false
            },
            indent = {
                    indent = {
                        enabled = false,
                    },
                    chunk = {
                        enabled = true,
                        char = {
                        horizontal = '─',
                        vertical = '│',
                        corner_top = '╭',
                        corner_bottom = '╰',
                        arrow = '─',
                        },
                    },
                },
            input = { enabled = true },
            picker = {
                enabled = true,
                matchers = {
                    fuzzy = true, -- use fuzzy matching
                    smartcase = true, -- use smartcase
                    ignorecase = true, -- use ignorecase
                    sort_empty = false, -- sort results when the search string is empty
                    filename_bonus = true, -- give bonus for matching file names (last part of the path)
                    file_pos = true, -- support patterns like `file:line:col` and `file:line`
                },
                exclude = {
                    ".git",
                    "node_modules",
                    "dist",
                    "build",
                },
                formatters = {
                    file = {
                        filename_first = false, -- display filename before the file path
                        truncate = "center",
                        min_width = 40, -- minimum length of the truncated path
                        filename_only = false, -- only show the filename
                        icon_width = 2, -- width of the icon (in characters)
                        git_status_hl = true, -- use the git status highlight group for the filename
                    },
                },
                severity = {
                    icons = true, -- show severity icons
                    level = false, -- show severity level
                    pos = "left", -- position of the diagnostics
                },
                toggles = {
                    hidden = "h",
                    ignored = "i",
                    modified = "m",
                },
                layout = {
                    preset = "telescope",
                    cycle = false,
                },
                layouts = {
                    telescope = {
                        reverse = false,
                        layout = {
                            box = "horizontal",
                            backdrop = false,
                            width = 0.8,
                            height = 0.9,
                            border = "none",
                            {
                                box = "vertical",
                                { win = "input", height = 1, border = "rounded", title = "{title} {live} {flags}", title_pos = "center" },
                                { win = "list", title = " Results ", title_pos = "center", border = "rounded" },
                            },
                            {
                                win = "preview",
                                title = "{preview:Preview}",
                                width = 0.65,
                                border = "rounded",
                                title_pos = "center",
                            },
                        },
                    }
                },
                win = {
                    input = {
                        keys = {
                            ["<Esc>"] = {  "close", mode = { "n" } },
                            ["<a-h>"] = { "toggle_hidden", mode = { "i", "n" } },
                            ["<a-i>"] = { "toggle_ignored", mode = { "i", "n" } },
                            ["J"] = {  "preview_scroll_down", mode = { "n" } },
                            ["K"] = {  "preview_scroll_up", mode = { "n" } },
                            ["H"] = {  "preview_scroll_left", mode = { "n" } },
                            ["L"] = {  "preview_scroll_right", mode = { "n" } },

                        }
                    }
                },
            },
            scratch = { enabled = true }

            },
        keys = {
            -- buffers
            { "<leader>bd",  function() Snacks.bufdelete() end, desc = 'Delete buffer'},
            { "<leader>bD",  function() Snacks.bufdelete( { force = true  } ) end, desc = 'Force Delete buffer'},
            { "<leader>bda",  function() Snacks.bufdelete.all() end, desc = 'Delete all buffers'},
            { "<leader>bdo",  function() Snacks.bufdelete.other() end, desc = 'Delete other buffers'},


            -- lazygit
            { "<leader>gg",  function() Snacks.lazygit.open() end, desc = 'Open lazygit'},

            -- notifications
            { "<leader>n", function()
                    if Snacks.config.picker and Snacks.config.picker.enabled then
                    Snacks.picker.notifications()
                    else
                    Snacks.notifier.show_history()
                    end
                end,
                desc = "Notification History" 
            },
            { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },

            -- picker
            { "<leader>bb", function() Snacks.picker.buffers() end, desc = "Buffers" },
            { "<leader>ff", function() Snacks.picker.files({ finder = "files" }) end, desc = "Find Files" },
            { "<leader>gf", function() Snacks.picker.git_files({ finder = "files"}) end, desc = "Find Git Files" },
            { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
            { "<leader>of", function() Snacks.picker.recent({ finder = "files" }) end, desc = "Recent" },
            { "<leader>cf", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
            { "<leader>lg", function() Snacks.picker.grep() end, desc = "Grep" },
            { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },

            -- LSP
            { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
            { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
            { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
            { "gi", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
            { "gt", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
            { "<leader>ds", function() Snacks.picker.lsp_symbols() end, desc = "Document LSP Symbols" },
            { "<leader>ws", function() Snacks.picker.lsp_workspace_symbols() end, desc = "Workspace LSP Symbols" },

            -- Other
            { "<leader>z",  function() Snacks.zen() end, desc = "Toggle Zen Mode" },
            { "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File" },
            { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
            { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },

        },
        init = function()
            vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
                Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
                Snacks.toggle.diagnostics():map("<leader>ud")
                Snacks.toggle.line_number():map("<leader>ul")
                Snacks.toggle.indent():map("<leader>ut")
                Snacks.toggle.dim():map("<leader>ud")
            end,
            })
        end,
    }
}
