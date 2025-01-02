return {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
        require('gitsigns').setup {
            signs                             = {
                add          = { text = '┃' },
                change       = { text = '┃' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            signcolumn                        = true,  -- Toggle with `:Gitsigns toggle_signs`
            numhl                             = false, -- Toggle with `:Gitsigns toggle_numhl`
            linehl                            = false, -- Toggle with `:Gitsigns toggle_linehl`
            word_diff                         = false, -- Toggle with `:Gitsigns toggle_word_diff`
            watch_gitdir                      = {
                follow_files = true
            },
            auto_attach                       = true,
            attach_to_untracked               = false,
            current_line_blame                = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
            current_line_blame_opts           = {
                virt_text = true,
                virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                delay = 1000,
                ignore_whitespace = false,
                virt_text_priority = 100,
            },
            -- current_line_blame_formatter      = '<author>, <author_time:%Y-%m-%d> - <summary>',
            -- current_line_blame_formatter_opts = {
            --     relative_time = false,
            -- },
            sign_priority                     = 6,
            update_debounce                   = 100,
            status_formatter                  = nil,   -- Use default
            max_file_length                   = 40000, -- Disable if file is longer than this (in lines)
            preview_config                    = {
                -- Options passed to nvim_open_win
                border = 'single',
                style = 'minimal',
                relative = 'cursor',
                row = 0,
                col = 1
            },
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map('n', ']c', function()
                    if vim.wo.diff then return ']c' end
                    vim.schedule(function() gs.next_hunk() end)
                    return '<Ignore>'
                end, { expr = true })

                map('n', '[c', function()
                    if vim.wo.diff then return '[c' end
                    vim.schedule(function() gs.prev_hunk() end)
                    return '<Ignore>'
                end, { expr = true })

                -- Actions
                map({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>')
                map({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>')
                map('n', '<leader>hS', gs.stage_buffer)
                map('n', '<leader>ha', gs.stage_hunk)
                map('n', '<leader>hu', gs.undo_stage_hunk)
                map('n', '<leader>hR', gs.reset_buffer)
                map('n', '<leader>hp', gs.preview_hunk)
                map('n', '<leader>hb', function() gs.blame_line { full = true } end)
                map('n', '<leader>tB', gs.toggle_current_line_blame)
                map('n', '<leader>hd', gs.diffthis)
                map('n', '<leader>hD', function() gs.diffthis('~') end)

                -- Text object
                map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
            end
        }
    end
}
