require('settings')
require('keybindings')

require('colors')

require('statusline')

require('language-server')
require('autocomplete')
require('telescope-config')

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = { "phpdoc" },
  context_commentstring = {
    enable = true
  },
  higlight = {
    enable = true,
    disable = { "lua" }
  },
  indent = {
    enable = true
  },
  autotag = {
    enable = true,
  }
}
require('nvim-tree').setup()

return require('packer').startup(function() 
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 
    'nvim-tree/nvim-tree.lua',
    config = function ()
      require('nvim-tree').setup()
    end
  }
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup { mappings_style = "surround" }
    end
  }
  use { 
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
end)

