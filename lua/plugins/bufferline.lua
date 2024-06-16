return {
    'akinsho/bufferline.nvim',
    version = "*",
    enabled = true,
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true

        require("bufferline").setup {}

    end

}
