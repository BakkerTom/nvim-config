require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ' '

-- LSP {{
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>')                             -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                      -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                           -- Rename an object
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')                      -- Go to declaration
nm('gf', '<cmd>lua vim.lsp.buf.format()<CR>')                           -- Format file
nm('ge', '<cmd>lua vim.diagnostic.open_float(0, { scope="line" })<CR>') -- Show line diagnostics
-- }}

-- Splits {{
nm('vs', ':vs<CR>') -- Split vertically
nm('sp', ':sp<CR>') -- Split horizontally
-- }}


-- Tabs {{
nm('tn', ':tabnew<CR>')              -- New tab
nm('tk', ':BufferLineCycleNext<CR>') -- Next tab
nm('tj', ':BufferLineCyclePrev<CR>') -- Previous tab
nm('to', ':%bd|e#|bd#<CR>')          -- Close other tabs
-- }}

-- Telescope {{
nm('gd', "<cmd>Telescope lsp_definitions<CR>") -- Go to decleration
nm('<C-P>', "<cmd>Telescope find_files<CR>")   -- Search for a file
nm('<C-F>', "<cmd>Telescope live_grep<CR>")    -- Find a string in a project
nm('tq', "<cmd>Telescope buffers<CR>")         -- Show all buffers
nm('ta', "<cmd>Telescope<CR>")                 -- Show all commands
nm('gr', '<cmd> Telescope lsp_references<CR>')
-- }}

-- NvimTree {{
nm('<leader>b', '<cmd>NvimTreeToggle<CR>')   -- Toggle file explorer
nm('<leader>f', '<cmd>NvimTreeFindFile<CR>') -- Find file in the file explorer
-- }}
