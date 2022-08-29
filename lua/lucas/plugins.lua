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
    ----------------
    ---- PACKER ----
    ----------------
    use { "wbthomason/packer.nvim", commit = "3a9f9801f683946b9f1047d8f4bf9946c29e927d" } -- Have packer manage itself

    -------------
    --- UTILS ---
    -------------
    use { "nvim-lua/plenary.nvim", commit = "a3dafaa937921a4eb2ae65820c3479ab561e9ba3" } -- Useful lua functions used ny lots of plugins
    use { "windwp/nvim-autopairs", commit = "0a18e10a0c3fde190437567e40557dcdbbc89ea1" } -- Autopairs, integrates with both cmp and treesitter
    use { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" } -- closes buffers more intelligently
    use { "lewis6991/impatient.nvim", commit = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" } -- makes neovim start faster
    use { "lukas-reineke/indent-blankline.nvim", commit = "c15bbe9f23d88b5c0b4ca45a446e01a0a3913707" } -- ident line
    use { "antoinemadec/FixCursorHold.nvim", commit = "5aa5ff18da3cdc306bb724cf1a138533768c9f5e" } -- This is needed to fix lsp
    use { "folke/which-key.nvim", commit = "bd4411a2ed4dd8bb69c125e339d837028a6eea71" }
    use { "nacro90/numb.nvim", commit = "453c50ab921fa066fb073d2fd0f826cb036eaf7b" } --peeks the code when doing something like :35
    use { "ahmedkhalf/project.nvim", commit = "090bb11ee7eb76ebb9d0be1c6060eac4f69a240f" } -- utils to navigate to projects, is used inside telescope
    use { "goolord/alpha-nvim", commit = "f457f7fadd5fdb6491422d4b8677c368bb2259d9" } -- initial dashboard
    use { "tpope/vim-repeat", commit = "24afe922e6a05891756ecf331f39a1f6743d3d5a" } -- allows other plugins to use dot repeat, currenly used by lightspeed
    -- use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } -- TODO configure to work

    -------------
    --- ICONS ---
    -------------
    use { "kyazdani42/nvim-web-devicons", commit = "2d02a56189e2bde11edd4712fea16f08a6656944" } -- cool icons TODO: could be better

    --------------
    --- THEMES ---
    --------------
    -- use({ 'projekt0n/github-nvim-theme' })
    -- use { "ellisonleao/gruvbox.nvim", commit = "bf2885a95efdad7bd5e4794dd0213917770d79b7" }
    use { "catppuccin/nvim", as = "catppuccin", commit = "d4aa577d07197c4ca32f3bafb0aebb5b4b7dec9f" }

    --------
    -- UI --
    --------
    use { "kyazdani42/nvim-tree.lua", requires = { 'kyazdani42/nvim-web-devicons' } } --load the file tree using the web devicons
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API
    use "akinsho/bufferline.nvim" -- top bar with buffers
    use "christianchiarulli/lualine.nvim" --status bar at the bottom
    use "norcalli/nvim-colorizer.lua"
    use "rcarriga/nvim-notify"
    -- hop is deprecated in favor of leap
    -- use {
    --     "phaazon/hop.nvim",
    --     branch = 'v2', -- optional but strongly recommended
    -- }
    use { "ggandor/leap.nvim", commit = "5cd1edbe9ecd05c9765b656d4a8016065135873f" }
    use "RRethy/vim-illuminate"

    ----------------
    --- COMMENTS ---
    ----------------
    use "folke/todo-comments.nvim"
    use "numToStr/Comment.nvim" -- allows comment shortcuts

    ----------------
    --- TERMINAL ---
    ----------------
    use "akinsho/toggleterm.nvim" --allows toglling a terminal inside neovim

    -----------------
    --- TELESCOPE ---
    -----------------
    use "nvim-telescope/telescope.nvim"
    use { 'nvim-telescope/telescope-ui-select.nvim' }

    ---------
    -- LSP --
    ---------
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig" -- enable lsp
    use "ray-x/lsp_signature.nvim" -- show function signature
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }
    use "jose-elias-alvarez/typescript.nvim"
    use 'glepnir/lspsaga.nvim'

    ---------
    -- CMP --
    ---------
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    ------------------------------
    --- LINTERS and FORMATTERS ---
    ------------------------------
    use 'mfussenegger/nvim-lint'
    use 'mhartington/formatter.nvim'
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

    ----------------
    --- SNIPPETS ---
    ----------------
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
    use "b0o/SchemaStore.nvim"

    ---------
    -- GIT --
    ---------
    use "lewis6991/gitsigns.nvim"
    use 'f-person/git-blame.nvim'
    use 'tpope/vim-fugitive'

    ---------
    -- DAP --
    ---------
    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "Pocco81/DAPInstall.nvim"

    -----------------
    ----- TESTS -----
    -----------------
    -- TODO: neotest ain't working
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

    -----------------
    --- GRAVEYARD ---
    -----------------
    -- use { "simrat39/symbols-outline.nvim", commit = "6a3ed24c5631da7a5d418bced57c16b32af7747c" }
    -- use "windwp/nvim-ts-autotag"
    -- use 'karb94/neoscroll.nvim'
    -- use "kylechui/nvim-surround"
    -- use {
    --  "abecodes/tabout.nvim",
    --  wants = { "nvim-treesitter" }, -- or require if not used so far
    --}
    -- use "windwp/nvim-spectre" --TODO configure this -- find and replace plugin
    --use "kevinhwang91/nvim-bqf"
    --use "ThePrimeagen/harpoon"
    --use "monaqa/dial.nvim"
    -- use "Mephistophiles/surround.nvim"
    --use { "michaelb/sniprun", run = "bash ./install.sh" }
    --use {
    --  "iamcco/markdown-preview.nvim",
    --  run = "cd app && npm install",
    --  ft = "markdown",
    --}
    -- use "stevearc/stickybuf.nvim"
    -- use "stevearc/dressing.nvim"
    -- use "ghillb/cybu.nvim"
    -- use "tversteeg/registers.nvim"
    -- use "hrsh7th/cmp-emoji"
    -- use "stevearc/aerial.nvim"
    -- use "j-hui/fidget.nvim"
    -- use "rmagatti/goto-preview"
    -- use "nvim-lua/lsp_extensions.nvim"
    -- use "tom-anders/telescope-vim-bookmarks.nvim"
    -- use "nvim-telescope/telescope-media-files.nvim"
    -- use "lalitmee/browse.nvim"
    -- use "theHamsta/nvim-dap-virtual-text"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
