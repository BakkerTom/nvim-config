require('settings')
require('keybindings')

require('colors')


require('language-server')
require('autocomplete')
require('telescope-config')
require('git')
require('formatting')

require 'nvim-treesitter.configs'.setup {
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

require('statusline')
require('tabline')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-live-grep-args.nvim' } }
  }
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'   -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'     -- Completion
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'stevearc/dressing.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup({
        update_focused_file = {
          enable = false,
          update_root = false,
          ignore_list = {},
        },
      })
    end
  }
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require "surround".setup { mappings_style = "surround" }
    end
  }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'github/copilot.vim' }
end)
