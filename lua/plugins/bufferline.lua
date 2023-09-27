return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true

        require("bufferline").setup {}

        vim.keymap.set("n", "<S-l>", ":bnext<CR>")
        vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
        vim.keymap.set("n", "<S-w>", ":Bdelete<CR>")
    end

}
