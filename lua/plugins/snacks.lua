return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,

    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        image = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = false },
        statuscolumn = { enabled = true },
        words = { enabled = true },

        terminal = {
            enabled = true,
            win = {
                position = "bottom",
                height = 0.3,
                relative = "win",
            },
        },

        picker = {
            enabled = true,
            sources = {
                explorer = {
                    auto_close = false,
                    hidden = true,
                    ignored = true,
                    layout = {
                        layout = {
                            width = 30,
                        },
                    },
                    win = {
                        list = {
                            keys = {
                                ["%"] = "explorer_add",
                                ["D"] = "explorer_del",
                                ["R"] = "explorer_rename",
                            },
                        },
                    },
                },
            },
        },
    },
    keys = {
        {
            "<leader>b",
            function()
                Snacks.explorer()
            end,
            desc = "Toggle File Explorer",
        },
        {
            "<leader>t",
            function()
                Snacks.terminal("fish")
            end,
            mode = { "n", "t" },
            desc = "Toggle Terminal",
        },
    },
}
