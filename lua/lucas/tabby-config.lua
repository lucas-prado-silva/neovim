local theme = {
    fill = 'TabLineFill',
    -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
    head = 'TabLine',
    current_tab = 'TabLineSel',
    tab = 'TabLine',
    win = 'TabLine',
    tail = 'TabLine',
}

require('tabby.tabline').use_preset('active_tab_with_wins', {
    {
        {
            ' ' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t') .. ' ',
            hl = theme.head
        },
    },
    tab_name = {
        name_fallback = function(tabid)
            return tabid
        end
    },
    buf_name = {
        mode = "unique",
    }
}
)
