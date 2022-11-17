local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

-- Install your plugins here
return packer.startup(function(use)
	----------------
	---- PACKER ----
	----------------
	use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself

	-------------
	--- UTILS ---
	-------------
	-- IDE features
	-- use {
	-- 	"Dax89/ide.nvim",
	-- 	requires = {
	-- 		{ "nvim-lua/plenary.nvim" },
	-- 		{ "rcarriga/nvim-notify" }, -- Notifications Popup (Optional)
	-- 		{ "stevearc/dressing.nvim" }, -- Improved UI (Optional)
	-- 		{ "mfussenegger/nvim-dap" }, -- DAP Support (Optional)
	-- 		{ "rcarriga/nvim-dap-ui" }, -- DAP-UI Support (Optional)
	-- 	}
	-- }

	use { "nvim-lua/plenary.nvim", commit = "a3dafaa937921a4eb2ae65820c3479ab561e9ba3" } -- Useful lua functions used by lots of plugins

	use { "antoinemadec/FixCursorHold.nvim", commit = "5aa5ff18da3cdc306bb724cf1a138533768c9f5e" } -- This is needed to fix lsp

	use { "windwp/nvim-autopairs", commit = "0a18e10a0c3fde190437567e40557dcdbbc89ea1" } -- Autopairs, integrates with both cmp and treesitter

	use { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" } -- closes buffers more intelligently

	use { "lewis6991/impatient.nvim", commit = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" } -- makes neovim start faster

	use { "lukas-reineke/indent-blankline.nvim", commit = "c15bbe9f23d88b5c0b4ca45a446e01a0a3913707" } -- ident line

	use { "folke/which-key.nvim", commit = "bd4411a2ed4dd8bb69c125e339d837028a6eea71" } -- shows keyboard shortcuts in floating window

	use { "nacro90/numb.nvim", commit = "453c50ab921fa066fb073d2fd0f826cb036eaf7b" } --peeks the code when doing something like :35

	use { "ahmedkhalf/project.nvim", commit = "090bb11ee7eb76ebb9d0be1c6060eac4f69a240f" } -- utils to navigate to projects, is used inside telescope

	use { "goolord/alpha-nvim", commit = "f457f7fadd5fdb6491422d4b8677c368bb2259d9" } -- initial dashboard

	use { "tpope/vim-repeat", commit = "24afe922e6a05891756ecf331f39a1f6743d3d5a" } -- allows other plugins to use dot repeat, currenly used by lightspeed

	use { "windwp/nvim-spectre", commit = "c553eb47ad9d82f8452119ceb6eb209c930640ec" } -- find and replace TODO improve usage

	use {
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup {
			}
		end
	} -- :ZenMode to become a monk

	-- TODO not working
	-- use { 'rhysd/conflict-marker.vim', commit = "22b6133116795ea8fb6705ddca981aa8faecedda" } -- conflict marker helper
	--
	-- TODO not working
	-- use { 'JoosepAlviste/nvim-ts-context-commentstring', commit = "4d3a68c41a53add8804f471fcc49bb398fe8de08" } -- comment depending on context

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({})
		end
	})

	-------------
	--- ICONS ---
	-------------
	use { "kyazdani42/nvim-web-devicons", commit = "2d02a56189e2bde11edd4712fea16f08a6656944" } -- cool icons

	---------------
	---- NEORG ----
	---------------
	use {
		"nvim-neorg/neorg",
		requires = "nvim-lua/plenary.nvim",
		tag = "0.0.15",
		ft = "norg",
		after = "nvim-treesitter", -- You may want to specify Telescope here as well
		run = ":Neorg sync-parsers", -- This updates the treesitter parsers
	}

	--------------
	--- THEMES ---
	--------------
	use { "ellisonleao/gruvbox.nvim" }

	--------
	-- UI --
	--------
	use { "kyazdani42/nvim-tree.lua", requires = { 'kyazdani42/nvim-web-devicons' }, -- file tree
		commit = "4a725c0ca501d81002aad77418f1edafdd01a0ba" } --load the file tree using the web devicons

	-- This makes cmdline stuff open on a pop up window
	-- use({
	-- 	"folke/noice.nvim",
	-- 	event = "VimEnter",
	-- 	commit = "613e16ea6683eaab25c8dcdc62a9a9a7e58d16b6",
	-- 	config = function()
	-- 		require("noice").setup()
	-- 	end,
	-- 	requires = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"rcarriga/nvim-notify",
	-- 		"hrsh7th/nvim-cmp",
	-- 	}
	-- })

	-- show LSP diagnostics on multiple lines instead of virtual text
	-- use({
	-- 	"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	-- 	config = function()
	-- 		require("lsp_lines").setup()
	-- 	end,
	-- })

	use { "nvim-lua/popup.nvim", commit = "b7404d35d5d3548a82149238289fa71f7f6de4ac" } -- An implementation of the Popup API

	use { "akinsho/bufferline.nvim", requires = 'kyazdani42/nvim-web-devicons',
		commit = "83bf4dc7bff642e145c8b4547aa596803a8b4dc4" } -- top bar with buffers

	use { "christianchiarulli/lualine.nvim", commit = "c0510ddec86070dbcacbd291736de27aabbf3bfe" } --status bar at the bottom

	use "norcalli/nvim-colorizer.lua" -- show color on code might be chill not to pin

	use { "rcarriga/nvim-notify", commit = "cf5dc4f7095673b8402c51bf80448596d7b97fc6" } -- UI library

	use { "ggandor/leap.nvim", commit = "5a09c30bf676d1392ff00eb9a41e0a1fc9b60a1b" } -- better buffer navigation

	use { "RRethy/vim-illuminate", commit = "9179f9cb3d7a97c5724d215c671b6eb578e63520" } -- illuminate selected cursor word

	use {
		"SmiteshP/nvim-navic", -- nice context tab bar
		requires = "neovim/nvim-lspconfig",
		commit = "94bf6fcb1dc27bdad230d9385da085e72c390019"
	}

	use({
		"ghillb/cybu.nvim", -- better buffer cycling
		commit = "df562d9f4692b58d00348aa5b91981e2347c974d",
		requires = { "kyazdani42/nvim-web-devicons", "nvim-lua/plenary.nvim" }, -- optional for icon support
	})

	-- TODO not working
	-- use {
	-- 	'gelguy/wilder.nvim',
	-- 	config = function()
	-- 		-- config goes here
	-- 	end,
	-- }
	--
	use { 'kevinhwang91/nvim-hlslens' } -- better search highlighting

	use("petertriho/nvim-scrollbar") -- shows a scrollbar

	----------------
	--- COMMENTS ---
	----------------
	use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim",
		commit = "98b1ebf198836bdc226c0562b9f906584e6c400e", config = function()
			require("todo-comments").setup()
		end
	} -- colors the comments

	use { "numToStr/Comment.nvim", commit = "80e7746e42fa685077a7941e9022308c7ad6adf8" } -- allows comment shortcuts

	----------------
	--- TERMINAL ---
	----------------
	use { "akinsho/toggleterm.nvim", commit = "f494c61024ffa25ee407d55b04d8b28ba9e839cb" } --allows toglling a terminal inside neovim

	-----------------
	--- TELESCOPE ---
	-----------------
	use { "nvim-telescope/telescope.nvim", commit = "b923665e64380e97294af09117e50266c20c71c7" } -- fuzzy finder

	use { 'nvim-telescope/telescope-ui-select.nvim', commit = "62ea5e58c7bbe191297b983a9e7e89420f581369" } -- ui for telescope

	use { "nvim-telescope/telescope-file-browser.nvim", commit = "00a814a891de086ed446151bacc559c63682b6ee" } -- file browser for telescope

	use {
		"AckslD/nvim-neoclip.lua", -- clipboard inside telescope
		requires = {
			{ 'kkharji/sqlite.lua', module = 'sqlite' },
			{ 'nvim-telescope/telescope.nvim' },
		},
		config = function()
			require('neoclip').setup()
		end,
	}

	use "xiyaowong/telescope-emoji.nvim" -- search for emojis

	---------
	-- LSP --
	---------
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", commit = "f3c53d225ada93a99bfd818e1c40012400e2dc55" }

	use { 'nvim-treesitter/nvim-treesitter-context', commit = "8d0759eb798fee2e1201b26c3279713ac67c44c2" }

	use { "williamboman/mason.nvim", commit = "924923882bcc027268fdfb77e72df60b058d5e69" } --LSP manager

	use { "williamboman/mason-lspconfig.nvim", commit = "74c45b3663aeb4c9065a4b29355d9c1c8a8c00b5" } -- helper for lsp

	use { "neovim/nvim-lspconfig", commit = "636ce36c30725391486377850bf8460dc0723ae2" } -- enable lsp

	use { "ray-x/lsp_signature.nvim", commit = "e65a63858771db3f086c8d904ff5f80705fd962b" } -- show function signature

	use {
		"folke/trouble.nvim", -- inline diagnostics
		requires = "kyazdani42/nvim-web-devicons",
		commit = "da61737d860ddc12f78e638152834487eabf0ee5"
	}

	use { "jose-elias-alvarez/typescript.nvim", commit = "4f362c92c1f2f41c9bb13e72106b8719ae3ff379" } -- ts utils TODO check config

	use { 'glepnir/lspsaga.nvim', commit = "777f3c8b7eea9eb57ef4f5f73452e3069360eb5d" } -- LSP UI library

	---------
	-- CMP --
	---------
	use { "hrsh7th/nvim-cmp", commit = "058100d81316239f3874064064f0f0c5d43c2103" } -- completion engine

	use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" } -- buffer completions

	use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" } -- path completions

	use { "hrsh7th/cmp-cmdline", commit = "9c0e331fe78cab7ede1c051c065ee2fc3cf9432e" } -- cmdline completions

	use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions

	use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" } -- lsb based cmp

	use { "hrsh7th/cmp-nvim-lua" } -- cmp for lua

	-- use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp',
	-- 	commit = "14e287b5b1434cef322de9cc1ec6fda13b913f45" }

	use { 'windwp/nvim-ts-autotag' }

	------------------------------
	--- LINTERS and FORMATTERS ---
	------------------------------
	use { 'mfussenegger/nvim-lint', commit = "b551a7218c802a5b361dd46857af4945fe779dcd" }

	use { 'mhartington/formatter.nvim', commit = "07a746e6df6bf4c77766aa6c19723da618a38781" }

	use { "jose-elias-alvarez/null-ls.nvim", commit = "753ad51790a966b42997ac935e26573fb6d5864a" } -- for formatters and linters

	-- use 'numToStr/prettierrc.nvim' -- TODO check this

	----------------
	--- SNIPPETS ---
	----------------
	use { "L3MON4D3/LuaSnip", commit = "b5cfdd0db5889bcd7c9bd6bdfb3fe83cb0a83bd1" } --snippet engine

	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

	use "b0o/SchemaStore.nvim"

	---------
	-- GIT --
	---------
	use { "lewis6991/gitsigns.nvim", commit = "1e107c91c0c5e3ae72c37df8ffdd50f87fb3ebfa" }

	use { 'f-person/git-blame.nvim', commit = "1087c3c78ea9f7b7825a256e8fe1ec3af1ad88d0" }

	use { 'tpope/vim-fugitive', commit = "b411b753f805b969cca856e2ae51fdbab49880df" }

	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

	----------
	-- RUST --
	----------
	use 'simrat39/rust-tools.nvim'

	---------
	-- DAP --
	---------
	-- use "mfussenegger/nvim-dap"
	-- use "rcarriga/nvim-dap-ui"
	-- use "Pocco81/DAPInstall.nvim"
	-- use "Pocco81/dap-buddy.nvim",

	-----------------
	----- TESTS -----
	-----------------
	use {
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"antoinemadec/FixCursorHold.nvim",
			"haydenmeade/neotest-jest",
			"nvim-neotest/neotest-vim-test",
			"vim-test/vim-test"
		}
	}

	use { 'David-Kunz/jester', commit = "be6fdd511bce3343117977cab3ca686dd4d4c0d6" }

	--------------------
	---- GRAVEYARD -----
	--------------------
	-- use { "j-hui/fidget.nvim", commit = "492492e7d50452a9ace8346d31f6d6da40439f0e",
	-- 	config = function() --unintrusive info about LSPs and stuff on corener
	-- 		require "fidget".setup {}
	-- 	end
	-- }
	--
	-- use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async',
	-- 	commit = "ba18a3bb31c35f16b4178ca69db097d0c6ba261a" } -- code folding
	--
	use { "j-hui/fidget.nvim", commit = "492492e7d50452a9ace8346d31f6d6da40439f0e",
		config = function() --unintrusive info about LSPs and stuff on corener
			require "fidget".setup {}
		end
	}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
