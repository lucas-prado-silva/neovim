return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        { 'nvim-tree/nvim-web-devicons' },
    },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'ayu_dark',
                -- component_separators = { left = '', right = ''},
                component_separators = '',
                -- section_separators = { left = '', right = ''},
                section_separators = '',
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {
                    {
                        'buffers',
                        show_filename_only = true,       -- Shows shortened relative path when set to false.
                        hide_filename_extension = false, -- Hide filename extension when set to true.
                        show_modified_status = true,     -- Shows indicator when the buffer is modified.

                        mode = 0,                        -- 0: Shows buffer name
                        -- 1: Shows buffer index
                        -- 2: Shows buffer name + buffer index
                        -- 3: Shows buffer number
                        -- 4: Shows buffer name + buffer number

                        max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
                        -- it can also be a function that returns
                        -- the value of `max_length` dynamically.
                        filetype_names = {
                            -- TelescopePrompt = 'Telescope',
                            -- dashboard = 'Dashboard',
                            -- packer = 'Packer',
                            -- fzf = 'FZF',
                            -- alpha = 'Alpha'
                        }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

                        -- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
                        use_mode_colors = false,

                        -- buffers_color = {
                        --     -- Same values as the general color option can be used here.
                        --     active = 'lualine_{section}_normal', -- Color for active buffer.
                        --     inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
                        -- },

                        symbols = {
                            modified = ' ●', -- Text to show when the buffer is modified
                            alternate_file = '', -- Text to show to identify the alternate file
                            directory = '', -- Text to show when the buffer is a directory
                        },
                    }
                },
                lualine_b = { 'branch' },
                lualine_c = {
                    {
                        'filename',
                        file_status = false, -- Displays file status (readonly status, modified status)
                        newfile_status = false, -- Display new file status (new file means no write after created)
                        path = 1, -- 0: Just the filename
                        -- 1: Relative path
                        -- 2: Absolute path
                        -- 3: Absolute path, with tilde as the home directory
                        -- 4: Filename and parent dir, with tilde as the home directory

                        shorting_target = 40, -- Shortens path to leave 40 spaces in the window
                        -- for other components. (terrible name, any suggestions?)
                        symbols = {
                            modified = '[+]', -- Text to show when the file is modified.
                            readonly = '[-]', -- Text to show when the file is non-modifiable or readonly.
                            unnamed = '[No Name]', -- Text to show for unnamed buffers.
                            newfile = '[New]', -- Text to show for newly created file before first write
                        }
                    }
                },
                lualine_x = { 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}
