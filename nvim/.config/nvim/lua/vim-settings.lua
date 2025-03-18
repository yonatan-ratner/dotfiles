local indent = 2

vim.opt.expandtab = true
vim.opt.tabstop = indent
vim.opt.softtabstop = indent
vim.opt.shiftwidth = indent

vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false
vim.wo.number = true

-- Better window navigation
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Clear search highlight
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
