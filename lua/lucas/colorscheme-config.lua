require('nightfox').setup({
    options = {
        transparent = true, -- Disable setting background
        styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold"
        }
    }
})

-- setup must be called before loading
vim.cmd("colorscheme carbonfox")
