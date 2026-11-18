return {
    servers = {
        "clangd",
        "gopls",
        "pyright",
        "zls",
        "rust_analyzer",
        "nixd",
        "lua_ls",
        "hyprls",
        "vscode-html-language-server",
    },
    formatters = {
        lua = { "stylua" },
        python = { "black" },
        go = { "gofmt" },
        rust = { "rustfmt" },
        zig = { "zigfmt" },
    },
}
