require("maxchip.settings")
require("maxchip.keybinds")
require("maxchip.lazy")

local lspconfig = require('lspconfig')

-- C/C++
lspconfig.clangd.setup({})

-- Zig
lspconfig.zls.setup({})

-- Lua
lspconfig.lua_ls.setup({
    settings = {
	Lua = {
	    diagnostics = {
		globals = { 'vim' },
	    },
	    workspace = {
		library = vim.api.nvim_get_runtime_file("", true),
	    },
	},
    },
})
