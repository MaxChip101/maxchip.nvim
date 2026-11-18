return {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
        local presence = require("presence")
        presence.setup({
            neovim_image_text = "The one True Text Editor",
        })
    end,
}
