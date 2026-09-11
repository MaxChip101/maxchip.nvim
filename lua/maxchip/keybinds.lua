vim.g.mapleader = ' '

-- explorer
vim.keymap.set('n', "<leader>ex", vim.cmd.Ex)

-- view error/warning
vim.keymap.set('n', "<leader>d", vim.diagnostic.open_float, { desc = 'Show line diagnostics' })

-- jump to prev/next error/warning
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
