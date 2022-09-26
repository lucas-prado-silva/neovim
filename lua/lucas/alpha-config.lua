local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local icons = require "lucas.icons"

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[ _   _                      _            ]],
  [[| \ | |                    (_)           ]],
  [[|  \| |  ___   ___  __   __ _  _ __ ___  ]],
  [[| . ` | / _ \ / _ \ \ \ / /| || '_ ` _ \ ]],
  [[| |\  ||  __/| (_) | \ V / | || | | | | |]],
  [[\_| \_/ \___| \___/   \_/  |_||_| |_| |_|]],
  [[                                         ]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", icons.documents.Files .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("n", icons.ui.NewFile .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button(
    "p",
    icons.git.Repo .. " Find project",
    ":lua require('telescope').extensions.projects.projects()<CR>"
  ),
  dashboard.button("r", icons.ui.History .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", icons.ui.List .. " Find text", ":Telescope live_grep <CR>"),
  -- this won't work for now, not using sessions yet
  dashboard.button("s", icons.ui.SignIn .. " Find Session", ":silent Autosession search <CR>"),
  dashboard.button("c", icons.ui.Gear .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("u", icons.ui.CloudDownload .. " Update", ":PackerSync<CR>"),
  dashboard.button("q", icons.ui.SignOut .. " Quit", ":qa<CR>"),
}
local function footer()
  return "(╯°□°）╯ ︵ ┻━┻"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
