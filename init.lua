require("maxchip.settings")
require("maxchip.keybinds")
require("maxchip.lazy")


-- Lua
--lspconfig.lua_ls.setup({
--    settings = {
--	Lua = {
--	    diagnostics = {
--		globals = { 'vim' },
--	    },
--	    workspace = {
--		library = vim.api.nvim_get_runtime_file("", true),
--	    },
--	},
--    },
--})

vim.lsp.config('*', {
    root_markers = { '.git' },
})

vim.lsp.enable({
    'gopls',
    'pyright',
    'zls',
    'rust_analyzer',
    'nixd',
    'lua_ls',
})
