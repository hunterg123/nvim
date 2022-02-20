vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'echasnovski/mini.nvim'
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use{
		'kyazdani42/nvim-tree.lua',
    		requires = {
      			'kyazdani42/nvim-web-devicons',
    		},
	}
end)
