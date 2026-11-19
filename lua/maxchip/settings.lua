vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.wrap = false
vim.opt.expandtab = true

vim.opt.scrolloff = 4

vim.opt.sidescrolloff = 6
vim.opt.sidescroll = 1

-- gets in the way a bit, maybe a different kind of implementation
--vim.opt.colorcolumn = "120"

vim.opt.clipboard = "unnamedplus"

vim.opt.guifont = "JetBrainsMono Nerd Font:h12"

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    float = {
        border = "rounded",
        source = "if_many",
        --source = "always",
    },
})
