return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    lazy = false,
    keys = {
        { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Tab" },
        { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Tab" },
        { "<leader>bd", "<cmd>bdelete<cr>", desc = "Close Tab" },
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
        },
    },
}
