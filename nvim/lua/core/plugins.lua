local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- package manager
  use 'ellisonleao/gruvbox.nvim' -- colorscheme
  use 'nvim-tree/nvim-tree.lua' -- file tree
  use 'nvim-tree/nvim-web-devicons' -- file tree icons
  use 'nvim-lualine/lualine.nvim' -- status line
  use 'nvim-treesitter/nvim-treesitter' -- syntax highlighting
  use 'hrsh7th/nvim-cmp' -- completion
  use 'hrsh7th/cmp-nvim-lsp' -- completion
  use 'L3MON4D3/LuaSnip' -- sinppets
  use 'saadparwaiz1/cmp_luasnip' -- snippets
  use 'rafamadriz/friendly-snippets' -- snippets
  use 'lervag/vimtex' -- latex
  use { -- LSP
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use { -- Telescope
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
