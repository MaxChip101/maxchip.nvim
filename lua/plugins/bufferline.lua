return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-web-devicons",
    lazy = false,
    keys = {
        { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Tab" },
        { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Tab" },
        {
            "<leader>c",
            function()
                Snacks.bufdelete()
            end,
            desc = "Delete Buffer Safely",
        },

        { "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", desc = "Go to Tab 1" },
        { "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", desc = "Go to Tab 2" },
        { "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", desc = "Go to Tab 3" },
        { "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", desc = "Go to Tab 4" },
        { "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", desc = "Go to Tab 5" },
        { "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", desc = "Go to Tab 6" },
        { "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", desc = "Go to Tab 7" },
        { "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", desc = "Go to Tab 8" },
        { "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", desc = "Go to Tab 9" },

        { "<leader>[", "<cmd>BufferLineMovePrev<cr>", desc = "Move tab left" },
        { "<leader>]", "<cmd>BufferLineMoveNext<cr>", desc = "Move tab right" },
    },
    opts = {
        options = {
            offsets = {
                {
                    filetype = "snacks_layout_box",
                    text = "Explorer",
                    text_align = "left",
                    separator = true,
                },
            },
            numbers = "ordinal",
        },
    },
}
