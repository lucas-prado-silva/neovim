-- use this table to enable or disable filetypes
vim.g.copilot_filenames = {
	xml = false,
	markdown = false,
}

vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = false
vim.keymap.set("i", "<C-a>", ":copilot#Accept('\\<CR>')<CR>", { silent = true })

--require('copilot').setup({
--  panel = {
--    enabled = true,
--    auto_refresh = false,
--    keymap = {
--      jump_prev = "[[",
--      jump_next = "]]",
--      accept = "<CR>",
--      refresh = "gr",
--      open = "<M-CR>"
--    },
--  },
--  suggestion = {
--    enabled = true,
--    auto_trigger = true,
--    debounce = 75,
--    keymap = {
--     accept = "<M-l>",
--     next = "<M-]>",
--     prev = "<M-[>",
--     dismiss = "<C-]>",
--    },
--  },
--  filetypes = {
--    yaml = false,
--    markdown = false,
--    help = false,
--    gitcommit = false,
--    gitrebase = false,
--    hgcommit = false,
--    svn = false,
--    cvs = false,
--	lua = true,
--	typescript = true,
--	javascript = true,
--   ["."] = false,
--  },
--  copilot_node_command = vim.fn.expand("$HOME") .. "/.config/nvm/versions/node/v16.14.2/bin/node", -- Node version must be < 18
--  server_opts_overrides = {},
--})
