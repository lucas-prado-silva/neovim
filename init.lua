-- Init Lazy Nvim Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


--------------------------------------------------
-- Declare options and keybindings
--------------------------------------------------
require("lucas.keybindings");
require("lucas.options")

--------------------------------------------------
-- Declare plugins
--------------------------------------------------
require("lazy").setup({
  spec = {
    -- import LazyVim plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    lazy = true, -- every plugin is lazy-loaded by default
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- require("lucas.plugins")

--------------------------------------------------
-- Declare plugin configs
--------------------------------------------------
-- require("lucas.autopairs")
-- require("lucas.bufferline")
-- require("lucas.chat-gpt")
-- require("lucas.colorscheme")
-- require("lucas.chat-gpt")
-- require("lucas.dashboard")
-- require("lucas.diffview")
-- require("lucas.git-signs")
-- require("lucas.github")
-- require("lucas.glance")
-- require("lucas.harpoon")
-- require("lucas.hlslens")
-- require("lucas.hydras")
-- require("lucas.illuminate")
-- require("lucas.leap")
-- require("lucas.lsp")
-- require("lucas.marks")
-- require("lucas.neogit")
-- require("lucas.nvim-tree")
-- require("lucas.project")
-- require("lucas.scrollbar")
-- require("lucas.telescope")
-- require("lucas.todo-comments")
-- require("lucas.toggleterm")
-- require("lucas.treesitter")
-- require("lucas.trouble")
-- require("lucas.undotree")
-- require("lucas.vim-fugitive")
-- require("lucas.which-key")
-- require("lucas.zippy")
