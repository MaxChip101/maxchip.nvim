require("maxchip.settings")
require("maxchip.keybinds")
require("maxchip.lazy")

local languages = require("maxchip.languages") -- lanuage specific lsps & fmts

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

local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if ok then
    capabilities = cmp_nvim_lsp.default_capabilities()
end

vim.lsp.config("*", {
    root_markers = { ".git" },
    capabilities = capabilities,
})

-- lua lsp globals
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "hl" },
            },
            workspace = {
                library = {
                    vim.api.nvim_get_runtime_file("", true),
                    vim.fn.expand("~/.config/hypr"),
                },
                checkThirdParty = false,
            },
        },
    },
})

vim.lsp.enable(languages.servers)
