return {
    --[[ custom colors
    {
        dir = vim.fn.stdpath("config"),
        name = "maxchip-theme",
        lazy = false,
        priority = 1000,
        config = function()
            require("maxchip.colors")
        end,
    },
    --]]
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = false,
        },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "tokyonight",
        },
    },
}
