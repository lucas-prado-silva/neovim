-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	--------------------------
	--    Package Manager
	--------------------------
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	--------------------------
	--    Dashboard
	--------------------------
	use {
		'goolord/alpha-nvim',
		config = function()
			require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
		end
	}

	--------------------------
	--    Treesitter
	--------------------------
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

	--------------------------
	--    LSP
	--------------------------
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	--------------------------
	--   File explorer
	--------------------------
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
	}

	--------------------------
	--   Comments
	--------------------------
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	}

	--------------------------
	--   Which Key
	-------------------------
	use {
		"folke/which-key.nvim",
	}

	--------------------------
	--    Telescope
	--------------------------
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	--------------------------
	--    Project Management
	--------------------------
	use {
		"ahmedkhalf/project.nvim",
	}

	--------------------------
	--    Colorschemes
	--------------------------
	use { "ellisonleao/gruvbox.nvim" }

	--------------------------
	--    Buffers
	--------------------------
	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
	use { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" } -- closes buffers more intelligently

	--------------------------
	--    Git
	--------------------------
	use { 'tpope/vim-fugitive' }
	use {
		'lewis6991/gitsigns.nvim',
		tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	}

	--------------------------
	--    Marks
	--------------------------
	use 'ThePrimeagen/harpoon'

	--------------------------
	--    Undo
	--------------------------
	use { 'mbbill/undotree' }

	--------------------------
	--    Utilitaries
	--------------------------
	use 'nvim-lua/plenary.nvim'
	use { "windwp/nvim-autopairs" }


end)
