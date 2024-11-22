return {
    'github/copilot.vim',
    event = "VeryLazy",
    lazy = true,
    config = function()
        vim.cmd [[
            let g:copilot_filetypes = {
                \ 'markdown': v:false,
                \ 'rust': v:false,
                \ }
        ]]
    end
}
