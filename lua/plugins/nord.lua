return {
    "shaunsingh/nord.nvim",
    lazy = false,
    enabled = false,
    priority = 1000,
	config = function ()
        vim.cmd [[colorscheme nord]]
	end
}
