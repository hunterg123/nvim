vim.cmd('packadd packer.nvim')

function get_setup(name)
  return string.format('require("configs/%s")', name)
end

return require('packer').startup(function()
  use {'wbthomason/packer.nvim'}

  use {
    'echasnovski/mini.nvim', 
    config = get_setup("mini")
  }

  use {'Mofiqul/dracula.nvim'}

  use {'folke/tokyonight.nvim'}
  
  use {'navarasu/onedark.nvim',
    config = get_setup("onedark")
  }

  use {
    'glepnir/galaxyline.nvim',
    config = get_setup("galaxyline")
   }

  use {
    'lewis6991/gitsigns.nvim',
    config = get_setup("gitsigns"),
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use { 'neovim/nvim-lspconfig',
    config = get_setup("lsp"),
  }
  use { 'williamboman/mason.nvim',
    config = get_setup("lsp"),
  }
  use { 'williamboman/mason-lspconfig.nvim',
    config = get_setup("lsp"),
  }
  use { 'hrsh7th/nvim-cmp',
    config = get_setup("cmp"),
  }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'L3MON4D3/LuaSnip' }
  use { 'rafamadriz/friendly-snippets' }


  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = get_setup("treesitter")
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    config = get_setup("telescope"),
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config = get_setup("nvimtree"),
    requires = {
      'kyazdani42/nvim-web-devicons', 
    }
  }

 --use{
  -- 'goolord/alpha-nvim',
  --  config = get_setup("alpha")
  --}
  
  use{
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = get_setup("startup")
  }

  use{
    "nvim-telescope/telescope-file-browser.nvim",
    config = get_setup("telescope")
  }
  
  use{
    "ellisonleao/glow.nvim",
    config = get_setup("glow")
  }
end)
