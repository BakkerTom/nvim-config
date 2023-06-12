vim.g.mapleader = " " -- Sets the map leader to a space character.
vim.o.number = true -- Enables line numbering.
vim.o.relativenumber = true -- Enables relative line numbering.
vim.o.wrap = false -- Disables line wrapping.
vim.o.expandtab = true -- Uses spaces instead of tabs for indentation.
vim.o.incsearch = true -- Highlights search matches as you type.
vim.o.tabstop = 2 -- Sets the number of spaces for each tab.
vim.o.cursorline = true -- Highlights the current line.
vim.o.ignorecase = true -- Makes searches case-insensitive by default.
vim.o.hlsearch = false -- Disables highlighting of search matches.
vim.o.swapfile = false -- Disables the creation of swap files for editing sessions.
vim.o.splitbelow = true -- Opens new horizontal splits below the current split.
vim.o.splitright = true -- Opens new vertical splits to the right of the current split.
vim.o.scrolloff = 3 -- Keeps at least 3 lines above and below the cursor when scrolling.
vim.o.errorbells = false -- Disables the error bell sound.
vim.o.shiftwidth = 2 -- Sets the number of spaces for each level of indentation.
vim.o.numberwidth = 4 -- Sets the width of the line number column.
vim.o.termguicolors = true -- Enables the use of true colors in the terminal.
vim.o.showmode = false -- Disables the display of the current mode.
vim.o.showtabline = 2 -- Shows the tabline with tabs.
vim.o.signcolumn = 'yes' -- Always shows the sign column.
vim.o.mouse = 'a' -- Enables mouse support in all modes.


-- Use macOS clipboard
vim.o.clipboard = 'unnamedplus'

vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })

