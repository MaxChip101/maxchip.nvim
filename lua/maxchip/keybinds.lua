vim.g.mapleader = " "

-- explorer
-- not using netrw
--vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set(
    "n",
    "<leader>dd",
    "<cmd>lua vim.diagnostic.open_float()<CR>",
    { desc = "Show Diagnostic", noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go to Right Window" })

vim.keymap.set("n", "<leader><left>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<leader><down>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<leader><up>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<leader><right>", "<C-w>l", { desc = "Go to Right Window" })
