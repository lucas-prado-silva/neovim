return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- calling `setup` is optional for customization
        require("fzf-lua").setup({})

        -- files
        vim.keymap.set("n", "<leader>ff", require('fzf-lua').files, { desc = "Fzf Files", silent = true, remap = true })
        vim.keymap.set("n", "<leader>fb", require('fzf-lua').buffers, { desc = "Fzf Buffers", silent = true, remap = true })

        -- search
        vim.keymap.set("n", "<leader>gg", require('fzf-lua').live_grep, { desc = "Fzf live_grep", silent = true, remap = true })
        vim.keymap.set("n", "<leader>gr", require('fzf-lua').live_grep_resume, { desc = "Fzf live_grep_resume", silent = true, remap = true })
        vim.keymap.set("n", "<leader>gc", require('fzf-lua').grep_cword, { desc = "Fzf grep_cword", silent = true, remap = true })
        vim.keymap.set("n", "<leader>gv", require('fzf-lua').grep_visual, { desc = "Fzf grep_visual", silent = true, remap = true })

        -- buffers
        vim.keymap.set("n", "<leader>fq", require('fzf-lua').buffers, { desc = "Fzf Quickfix", silent = true, remap = true })

        -- resume
        vim.keymap.set("n", "<leader>fr", require('fzf-lua').resume, { desc = "Fzf Resume", silent = true, remap = true })
    end
}
