return {
    "kevinhwang91/nvim-bqf",
    opts = {},
    config = function()
        require('bqf').setup({
            auto_enable = true,
            auto_resize_height = true, -- highly recommended enable
            preview = {
                win_height = 12,
                win_vheight = 12,
                delay_syntax = 80,
                -- border = { '┏', '━', '┓', '┃', '┛', '━', '┗', '┃' },
                show_title = false,
            },
            -- make `drop` and `tab drop` to become preferred
            -- func_map = {
            --     drop = 'o',
            --     openc = 'O',
            --     split = '<C-s>',
            --     tabdrop = '<C-t>',
            --     -- set to empty string to disable
            --     tabc = '',
            --     ptogglemode = 'z,',
            -- },
            -- filter = {
            --     fzf = {
            --         action_for = { ['ctrl-s'] = 'split', ['ctrl-t'] = 'tab drop' },
            --         extra_opts = { '--bind', 'ctrl-o:toggle-all', '--prompt', '> ' }
            --     }
            -- }
        })
    end
}
