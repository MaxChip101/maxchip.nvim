return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "main",
    lazy = false,
    init = function()
        -- Force locally compiled parsers/queries to load BEFORE /nix/store/.../runtime
        vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/site")
    end,
    config = function()
        require("nvim-treesitter").setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
        })
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "lua",
                "c",
                "zig",
                "go",
                "markdown",
                "markdown_inline",
                "bash",
            },
            auto_install = false,

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    pcall(vim.treesitter.start, args.buf)
                end,
            }),
        })
    end,
}
