-- setup must be called before loading the colorscheme
-- Default options:
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "", -- can be "hard", "soft" or empty string
--   overrides = {},
-- })
--
-- vim.cmd("colorscheme gruvbox")

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

local colors = require("catppuccin.palettes").get_palette()
colors.none = "NONE"

require("catppuccin").setup({
    transparent_background = true,
    custom_highlights = {
        Comment = { fg = colors.overlay1 },
        LineNr = { fg = colors.overlay1 },
        CursorLine = { bg = colors.none },
        CursorLineNr = { fg = colors.lavender },
        DiagnosticVirtualTextError = { bg = colors.none },
        DiagnosticVirtualTextWarn = { bg = colors.none },
        DiagnosticVirtualTextInfo = { bg = colors.none },
        DiagnosticVirtualTextHint = { bg = colors.none },
    },
    integrations = {
        treesitter = true,
        treesitter_context = true,
        nvimtree = true,
        neogit = true,
        lsp_trouble = true,
        lsp_saga = true,
        gitsigns = true,
        telescope = true,
        notify = true,
        hop = true,
        dashboard = true,
    }
})

vim.cmd [[colorscheme catppuccin]]
