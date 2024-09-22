local gruvbox_colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}

local gruvbox_theme = {
  normal = {
    a = { bg = gruvbox_colors.white, fg = gruvbox_colors.black, gui = 'bold' },
    b = { bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white },
    c = { bg = 'None', fg = gruvbox_colors.gray },
  },
  insert = {
    a = { bg = gruvbox_colors.blue, fg = gruvbox_colors.black, gui = 'bold' },
    b = { bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white },
    c = { bg = 'None', fg = gruvbox_colors.white },
  },
  visual = {
    a = { bg = gruvbox_colors.yellow, fg = gruvbox_colors.black, gui = 'bold' },
    b = { bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white },
    c = { bg = 'None', fg = gruvbox_colors.black },
  },
  replace = {
    a = { bg = gruvbox_colors.red, fg = gruvbox_colors.black, gui = 'bold' },
    b = { bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white },
    c = { bg = 'None', fg = gruvbox_colors.white },
  },
  command = {
    a = { bg = gruvbox_colors.green, fg = gruvbox_colors.black, gui = 'bold' },
    b = { bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white },
    c = { bg = 'None', fg = gruvbox_colors.black },
  },
  inactive = {
    a = { bg = gruvbox_colors.darkgray, fg = gruvbox_colors.gray, gui = 'bold' },
    b = { bg = gruvbox_colors.darkgray, fg = gruvbox_colors.gray },
    c = { bg = 'None', fg = gruvbox_colors.gray },
  },
}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        { 'nvim-tree/nvim-web-devicons' },
    },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = gruvbox_theme,
                component_separators = '',
                section_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2, left_padding = 2 } },
                lualine_b = {
                    {
                        'buffers',
                        icons_enabled = false,
                        symbols = {
                            modified = ' ●', -- Text to show when the buffer is modified
                            alternate_file = '', -- Text to show to identify the alternate file
                            directory = '', -- Text to show when the buffer is a directory
                        },
                    }
                },
                lualine_c = {},
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'encoding', 'fileformat', 'filetype' },
                lualine_z = { 'location', 'encoding' }
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}
