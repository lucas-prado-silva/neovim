return {
	{
		"shaunsingh/nord.nvim",
		enabled = false,
		pin = true,
		event = "VimEnter",
		config = function()
			-- Example config in lua
			vim.g.nord_contrast = true
			vim.g.nord_borders = false
			vim.g.nord_disable_background = false
			vim.g.nord_italic = false
			vim.g.nord_uniform_diff_background = true
			vim.g.nord_bold = false

			-- Load the colorscheme
			require("nord").set()

			-- setup must be called before loading
			vim.cmd("colorscheme nord")
		end,
	},
}
