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
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

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

  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- allows comment shortcuts
  use "kyazdani42/nvim-web-devicons" -- cool icons TODO: could be better
  use { "kyazdani42/nvim-tree.lua", requires = { 'kyazdani42/nvim-web-devicons' } } --load the file tree using the web devicons
  use "akinsho/bufferline.nvim" -- top bar with buffers
  use "moll/vim-bbye" -- closes buffers more intelligently
  use "christianchiarulli/lualine.nvim" --status bar at the bottom
  use "akinsho/toggleterm.nvim" --allows toglling a terminal inside neovim
  use "ahmedkhalf/project.nvim" -- utils to navigate to projects, is used inside telescope
  use "lewis6991/impatient.nvim" -- makes neovim start faster
  use "lukas-reineke/indent-blankline.nvim" -- ident line
  use "goolord/alpha-nvim" -- initial dashboard
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp
  use {
        "phaazon/hop.nvim",
        branch = 'v2', -- optional but strongly recommended
    }
  -- use "kylechui/nvim-surround"
  -- use {
  --  "abecodes/tabout.nvim",
  --  wants = { "nvim-treesitter" }, -- or require if not used so far
  --}
  use "nacro90/numb.nvim" --peeks the code when doing something like :35
  --use "monaqa/dial.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "windwp/nvim-spectre" --TODO configure this -- find and replace plugin
  --use "kevinhwang91/nvim-bqf"
  --use "ThePrimeagen/harpoon"
  -- use "Mephistophiles/surround.nvim"
  --use { "michaelb/sniprun", run = "bash ./install.sh" }
  --use {
  --  "iamcco/markdown-preview.nvim",
  --  run = "cd app && npm install",
  --  ft = "markdown",
  --}
  -- use "stevearc/stickybuf.nvim"

  -- UI
  -- use "stevearc/dressing.nvim"
  -- use "ghillb/cybu.nvim"
  -- use "tversteeg/registers.nvim"
  use "rcarriga/nvim-notify"
  use "folke/which-key.nvim"
  use "folke/todo-comments.nvim"

  -- Colorschemes
  use ({ 'projekt0n/github-nvim-theme' })

  -- cmp plugins
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  -- use "hrsh7th/cmp-emoji"
  use "hrsh7th/cmp-nvim-lua"
  -- snippets

  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "simrat39/symbols-outline.nvim"
  use "ray-x/lsp_signature.nvim" -- show function signature
  use "b0o/SchemaStore.nvim"
  use "folke/trouble.nvim"
  -- use "github/copilot.vim"
  -- use {
  --  "zbirenbaum/copilot.lua",
  --  event = { "VimEnter" },
  --  config = function()
  --    vim.defer_fn(function()
  --      require "user.copilot"
  --    end, 100)
  -- end,
  --}
  use "RRethy/vim-illuminate"
  -- use "stevearc/aerial.nvim"
  -- use "j-hui/fidget.nvim"
  -- TODO: set this up
  -- use "rmagatti/goto-preview"
  -- use "nvim-lua/lsp_extensions.nvim"

  -- Typescript TODO: set this up, also add keybinds to ftplugin
  use "jose-elias-alvarez/typescript.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  -- use "tom-anders/telescope-vim-bookmarks.nvim"
  -- use "nvim-telescope/telescope-media-files.nvim"
  -- use "lalitmee/browse.nvim"

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "windwp/nvim-ts-autotag"

  -- Git
  use "lewis6991/gitsigns.nvim"
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'

  -- DAP
  use "mfussenegger/nvim-dap"
  -- use "theHamsta/nvim-dap-virtual-text"
  use "rcarriga/nvim-dap-ui"
  use "Pocco81/DAPInstall.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
