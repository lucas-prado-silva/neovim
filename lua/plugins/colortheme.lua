-- return {
--     'rebelot/kanagawa.nvim',
--     enabled = true,
--     config = function()
--         -- Default options:
--         require('kanagawa').setup({
--             compile = false,  -- enable compiling the colorscheme
--             undercurl = true, -- enable undercurls
--             commentStyle = { italic = true },
--             functionStyle = {},
--             keywordStyle = { italic = true },
--             statementStyle = { bold = true },
--             typeStyle = {},
--             transparent = true,    -- do not set background color
--             dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
--             terminalColors = true, -- define vim.g.terminal_color_{0,17}
--             colors = {             -- add/modify theme and palette colors
--                 palette = {},
--                 theme = {
--                     wave = {},
--                     lotus = {},
--                     dragon = {},
--                     all = {
--                         ui = {
--                             bg_gutter = "none"
--                         }
--                     }
--                 },
--             },
--             overrides = function(colors) -- add/modify highlights
--                 return {}
--             end,
--             theme = "wave",    -- Load "wave" theme when 'background' option is not set
--             background = {     -- map the value of 'background' option to a theme
--                 dark = "wave", -- try "dragon" !
--                 light = "lotus"
--             },
--         })
--
--         -- setup must be called before loading
--         vim.cmd("colorscheme kanagawa")
--     end
--
-- }

-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         require("catppuccin").setup({
--             flavour = "mocha", -- latte, frappe, macchiato, mocha
--             background = { -- :h background
--                 light = "mocha",
--                 dark = "mocha",
--             },
--             transparent_background = false, -- disables setting the background color.
--             show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--             term_colors = false,    -- sets terminal colors (e.g. `g:terminal_color_0`)
--             dim_inactive = {
--                 enabled = false,    -- dims the background color of inactive window
--                 shade = "dark",
--                 percentage = 0.15,  -- percentage of the shade to apply to the inactive window
--             },
--             no_italic = false,      -- Force no italic
--             no_bold = false,        -- Force no bold
--             styles = {              -- Handles the styles of general hi groups (see `:h highlight-args`):
--                 comments = { "italic" }, -- Change the style of comments
--                 conditionals = { "italic" },
--                 loops = {},
--                 functions = {},
--                 keywords = {},
--                 strings = {},
--                 variables = {},
--                 numbers = {},
--                 booleans = {},
--                 properties = {},
--                 types = {},
--                 operators = {},
--                 -- miscs = {}, -- Uncomment to turn off hard-coded styles
--             },
--             color_overrides = {},
--             custom_highlights = {},
--             default_integrations = true,
--             integrations = {
--                 cmp = true,
--                 gitsigns = true,
--                 nvimtree = true,
--                 treesitter = true,
--                 notify = false,
--                 mini = {
--                     enabled = true,
--                     indentscope_color = "",
--                 },
--                 -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--             },
--         })
--
--         -- setup must be called before loading
--         vim.cmd.colorscheme "catppuccin"
--     end
-- }

-- return {
--     "shaunsingh/nord.nvim",
--     priority = 1000,
--     config = function()
--         -- Example config in lua
--         vim.g.nord_contrast = true
--         vim.g.nord_borders = false
--         vim.g.nord_disable_background = true
--         vim.g.nord_italic = false
--         vim.g.nord_uniform_diff_background = true
--         vim.g.nord_bold = false
--
--         -- Load the colorscheme
--         require('nord').set()
--
--         -- setup must be called before loading
--         vim.cmd.colorscheme "nord"
--     end
-- }

return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    -- opts = ...
    config = function()
        require("gruvbox").setup({
            terminal_colors = true, -- add neovim terminal colors
            undercurl = false,
            underline = false,
            bold = false,
            italic = {
                strings = false,
                emphasis = false,
                comments = true,
                operators = false,
                folds = false,
            },
            strikethrough = false,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = "hard", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = true,
        })
        vim.cmd("colorscheme gruvbox")
    end
}
