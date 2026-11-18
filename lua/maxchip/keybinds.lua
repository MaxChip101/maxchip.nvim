vim.g.mapleader = " "

-- explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- view error/warning
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

-- jump to prev/next error/warning
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go to Right Window" })

vim.keymap.set("n", "<leader><left>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<leader><down>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<leader><up>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<leader><right>", "<C-w>l", { desc = "Go to Right Window" })
