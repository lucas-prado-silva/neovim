-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- SECTION:---------------------------------------
	-- SECTION:         PACKAGE MANAGER
	-- SECTION:---------------------------------------

	---------------------------------------------------------------------------------------------
	-- Packer (it can manage itself, what a strong independent package manager)
	---------------------------------------------------------------------------------------------
	use 'wbthomason/packer.nvim'

	-- SECTION:---------------------------------------
	-- SECTION:         Initial Dashboard
	-- SECTION:---------------------------------------
	use {
		'goolord/alpha-nvim',
		config = function()
			require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
		end
	}

	-- SECTION:---------------------------------------
	-- SECTION:         AI related plugins
	-- SECTION:---------------------------------------

	use({
		"jackMort/ChatGPT.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		}
	})

	-- SECTION:---------------------------------------
	-- SECTION:         Treesitter
	-- SECTION:---------------------------------------

	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

	-- SECTION:---------------------------------------
	-- SECTION:         Highlighting
	-- SECTION:---------------------------------------

	use "RRethy/vim-illuminate"

	-- SECTION:---------------------------------------
	-- SECTION:         LSP
	-- SECTION:---------------------------------------

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

	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}

	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})

	-- SECTION:---------------------------------------
	-- SECTION:         Movement
	-- SECTION:---------------------------------------

	use "ggandor/leap.nvim"

	-- SECTION:---------------------------------------
	-- SECTION:         Logging
	-- SECTION:---------------------------------------

	use 'PatschD/zippy.nvim'

	-- SECTION:---------------------------------------
	-- SECTION:         Search
	-- SECTION:---------------------------------------

	use {'kevinhwang91/nvim-hlslens'}

	-- SECTION:---------------------------------------
	-- SECTION:         Terminal Support
	-- SECTION:---------------------------------------

	use { "akinsho/toggleterm.nvim", tag = '*' }

	-- SECTION:---------------------------------------
	-- SECTION:         File Explorer
	-- SECTION:---------------------------------------

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
	}

	-- SECTION:---------------------------------------
	-- SECTION:         Comments
	-- SECTION:---------------------------------------

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

	-- SECTION:---------------------------------------
	-- SECTION:         Which Key
	-- SECTION:---------------------------------------

	use {
		"folke/which-key.nvim",
	}

	-- SECTION:---------------------------------------
	-- SECTION:         Telescope
	-- SECTION:---------------------------------------

	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- SECTION:---------------------------------------
	-- SECTION:         Project Management
	-- SECTION:---------------------------------------

	use {
		"ahmedkhalf/project.nvim",
	}

	-- SECTION:---------------------------------------
	-- SECTION:         Themes
	-- SECTION:---------------------------------------

	use { "ellisonleao/gruvbox.nvim" }

	-- SECTION:---------------------------------------
	-- SECTION:         Buffers
	-- SECTION:---------------------------------------

	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
	use { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" } -- closes buffers more intelligently

	-- SECTION:---------------------------------------
	-- SECTION:         Git
	-- SECTION:---------------------------------------

	use { 'tpope/vim-fugitive' }
	use {
		'lewis6991/gitsigns.nvim',
		tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	}

	-- SECTION:---------------------------------------
	-- SECTION:         Marks
	-- SECTION:---------------------------------------

	use 'ThePrimeagen/harpoon'

	-- SECTION:---------------------------------------
	-- SECTION:         Utils
	-- SECTION:---------------------------------------

	use 'nvim-lua/plenary.nvim'
	use { "windwp/nvim-autopairs" }
	use { 'mbbill/undotree' }


end)
