local status, catppuccin = pcall(require, "catppuccin")
if (not status) then return end

vim.cmd([[colorscheme catppuccin-mocha]])
vim.o.background = 'dark'
