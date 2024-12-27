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

return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "mocha",
                dark = "mocha",
            },
            transparent_background = true, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false,    -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false,    -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15,  -- percentage of the shade to apply to the inactive window
            },
            no_italic = false,      -- Force no italic
            no_bold = false,        -- Force no bold
            styles = {              -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
                -- miscs = {}, -- Uncomment to turn off hard-coded styles
            },
            color_overrides = {},
            custom_highlights = {},
            default_integrations = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        })

        -- setup must be called before loading
        vim.cmd.colorscheme "catppuccin"
    end
}

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

-- return {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     -- opts = ...
--     config = function()
--         require("gruvbox").setup({
--             terminal_colors = true, -- add neovim terminal colors
--             undercurl = false,
--             underline = false,
--             bold = false,
--             italic = {
--                 strings = false,
--                 emphasis = false,
--                 comments = true,
--                 operators = false,
--                 folds = false,
--             },
--             strikethrough = false,
--             invert_selection = false,
--             invert_signs = false,
--             invert_tabline = false,
--             invert_intend_guides = false,
--             inverse = true, -- invert background for search, diffs, statuslines and errors
--             contrast = "soft", -- can be "hard", "soft" or empty string
--             palette_overrides = {},
--             overrides = {},
--             dim_inactive = false,
--             transparent_mode = true,
--         })
--         vim.cmd("colorscheme gruvbox")
--     end
-- }

-- return {
--     'olivercederborg/poimandres.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require('poimandres').setup {
--             bold_vert_split = false, -- use bold vertical separators
--             dim_nc_background = false, -- dim 'non-current' window backgrounds
--             disable_background = true, -- disable background
--             disable_float_background = true, -- disable background for floats
--             disable_italics = true, -- disable italics
--         }
--     end,
--
--     -- optionally set the colorscheme within lazy config
--     init = function()
--         vim.cmd("colorscheme poimandres")
--     end
-- }

-- return {
--     'jesseleite/nvim-noirbuddy',
--     dependencies = {
--         { 'tjdevries/colorbuddy.nvim' }
--     },
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require('noirbuddy').setup {
--             colors = {
--                 primary = '#0B81EF',
--                 secondary = '#0bd8ef',
--                 background = '#000000',
--                 noir_0 = '#ffffff', -- `noir_0` is light for dark themes, and dark for light themes
--                 noir_1 = '#f5f5f5',
--                 noir_2 = '#d5d5d5',
--                 noir_3 = '#b4b4b4',
--                 noir_4 = '#a7a7a7',
--                 noir_5 = '#949494',
--                 noir_6 = '#757575',
--                 noir_7 = '#757575',
--                 noir_8 = '#757575',
--                 noir_9 = '#000000', -- `noir_9` is dark for dark themes, and light for light themes
--             },
--             styles = {
--                 italic = false,
--                 bold = false,
--                 underline = false,
--                 undercurl = false,
--             },
--         }
--         -- vim.cmd("colorscheme noirbuddy")
--     end
-- }

-- return {
--     'aliqyan-21/darkvoid.nvim',
--     priority = 1000,
--     config = function()
--         require('darkvoid').setup {
--             transparent = true,         -- set true for transparent
--             glow = true,                -- set true for glow effect
--             show_end_of_buffer = false, -- set false for not showing end of buffer
--
--             colors = {
--                 fg = "#c0c0c0",
--                 bg = "#1c1c1c",
--                 cursor = "#bdfe58",
--                 line_nr = "#404040",
--                 visual = "#303030",
--                 comment = "#585858",
--                 string = "#d1d1d1",
--                 func = "#e1e1e1",
--                 kw = "#f1f1f1",
--                 identifier = "#b1b1b1",
--                 type = "#a1a1a1",
--                 search_highlight = "#1bfd9c",
--                 operator = "#1bfd9c",
--                 bracket = "#e6e6e6",
--                 preprocessor = "#4b8902",
--                 bool = "#66b2b2",
--                 constant = "#b2d8d8",
--
--                 -- gitsigns colors
--                 added = "#baffc9",
--                 changed = "#ffffba",
--                 removed = "#ffb3ba",
--
--                 -- Pmenu colors
--                 pmenu_bg = "#1c1c1c",
--                 pmenu_sel_bg = "#1bfd9c",
--                 pmenu_fg = "#c0c0c0",
--
--                 -- EndOfBuffer color
--                 eob = "#3c3c3c",
--
--                 -- Telescope specific colors
--                 border = "#585858",
--                 title = "#bdfe58",
--
--                 -- bufferline specific colors
--                 -- change this to change the colors of current or selected tab
--                 bufferline_selection = "#bdfe58",
--
--                 -- LSP diagnostics colors
--                 error = "#dea6a0",
--                 warning = "#D0B8A8",
--                 hint = "#BEDC74",
--                 info = "#7FA1C3",
--             }
--         }
--         vim.cmd("colorscheme darkvoid")
--     end
-- }

-- return {
--     'AlexvZyl/nordic.nvim',
--     -- lazy = false,
--     priority = 1000,
--     config = function()
--         require('nordic').setup({
--             -- This callback can be used to override the colors used in the base palette.
--             on_palette = function(palette) end,
--             -- This callback can be used to override the colors used in the extended palette.
--             after_palette = function(palette) end,
--             -- This callback can be used to override highlights before they are applied.
--             on_highlight = function(highlights, palette) end,
--             -- Enable bold keywords.
--             bold_keywords = false,
--             -- Enable italic comments.
--             italic_comments = true,
--             -- Enable editor background transparency.
--             transparent = {
--                 -- Enable transparent background.
--                 bg = true,
--                 -- Enable transparent background for floating windows.
--                 float = true,
--             },
--             -- Enable brighter float border.
--             bright_border = false,
--             -- Reduce the overall amount of blue in the theme (diverges from base Nord).
--             reduced_blue = true,
--             -- Swap the dark background with the normal one.
--             swap_backgrounds = false,
--             -- Cursorline options.  Also includes visual/selection.
--             cursorline = {
--                 -- Bold font in cursorline.
--                 bold = false,
--                 -- Bold cursorline number.
--                 bold_number = true,
--                 -- Available styles: 'dark', 'light'.
--                 theme = 'dark',
--                 -- Blending the cursorline bg with the buffer bg.
--                 blend = 0.85,
--             },
--             noice = {
--                 -- Available styles: `classic`, `flat`.
--                 style = 'classic',
--             },
--             telescope = {
--                 -- Available styles: `classic`, `flat`.
--                 style = 'flat',
--             },
--             leap = {
--                 -- Dims the backdrop when using leap.
--                 dim_backdrop = false,
--             },
--             ts_context = {
--                 -- Enables dark background for treesitter-context window
--                 dark_background = true,
--             }
--         })
--         require('nordic').load()
--     end
-- }
