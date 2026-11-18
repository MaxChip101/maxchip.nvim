vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.wrap = false
vim.opt.expandtab = true
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

vim.api.nvim_create_autocmd("QuitPre", {
    group = vim.api.nvim_create_augroup("MaxchipQuitFix", { clear = true }),
    callback = function()
        local current_buf = vim.api.nvim_get_current_buf()
        local current_ft = vim.api.nvim_get_option_value("filetype", { buf = current_buf })
        local current_bt = vim.api.nvim_get_option_value("buftype", { buf = current_buf })

        if current_ft:match("^snacks_") or current_bt == "terminal" then
            vim.cmd("qa")
            return
        end

        local aux_windows = {}
        local floating_windows = {}
        local windows = vim.api.nvim_list_wins()

        for _, w in ipairs(windows) do
            local buf = vim.api.nvim_win_get_buf(w)
            local ft = vim.api.nvim_get_option_value("filetype", { buf = buf })
            local bt = vim.api.nvim_get_option_value("buftype", { buf = buf })

            if ft:match("^snacks_") or bt == "terminal" then
                table.insert(aux_windows, w)
            elseif vim.api.nvim_win_get_config(w).relative ~= "" then
                table.insert(floating_windows, w)
            end
        end

        if 1 == #windows - #floating_windows - #aux_windows then
            for _, w in ipairs(aux_windows) do
                vim.api.nvim_win_close(w, true)
            end
        end
    end,
})
