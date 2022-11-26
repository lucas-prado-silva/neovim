-- vim.o.background = "dark" -- or "light" for light mode

-- require("gruvbox").setup({
-- 	undercurl = true,
-- 	underline = false,
-- 	bold = true,
-- 	italic = false,
-- 	strikethrough = true,
-- 	invert_selection = false,
-- 	invert_signs = false,
-- 	invert_tabline = false,
-- 	invert_intend_guides = false,
-- 	inverse = true, -- invert background for search, diffs, statuslines and errors
-- 	contrast = "hard", -- can be "hard", "soft" or empty string
-- 	palette_overrides = {},
-- 	overrides = {},
-- 	dim_inactive = false,
-- 	transparent_mode = false,
-- })
--
-- vim.cmd([[colorscheme gruvbox]])

require("catppuccin").setup {
    flavour = "mocha",
    color_overrides = {
        -- mocha = {
        --     base = "#000000",
        -- },
    },
    integrations = {
        nvimtree = true,
    },
    highlight_overrides = {
        mocha = function(mocha)
            return {
                NvimTreeNormal = { bg = mocha.none },
            }
        end,
    },
}

vim.cmd.colorscheme "catppuccin"
