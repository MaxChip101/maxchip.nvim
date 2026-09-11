return {
    servers = {
	'clangd',
        'gopls',
	'pyright',
        'zls',
        'rust_analyzer',
	'nixd',
	'lua_ls',
    },
    formatters = {
	lua = { "stylua" },
	python = { "black" },
	go = { "gofmt" },
	rust = { "rustfmt" },
        zig = { "zigfmt" },
    },
}
