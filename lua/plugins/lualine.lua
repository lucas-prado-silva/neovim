local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#080808',
    white  = '#c6c6c6',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#303030',
}

local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.white },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
    },

    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.red } },

    inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
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
                theme = bubbles_theme,
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
