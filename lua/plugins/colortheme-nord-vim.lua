return {
	{
		"nordtheme/vim",
		enabled = true,
		pin = true,
		event = "VimEnter",
		config = function()
			vim.cmd("colorscheme nord")
		end,
	},
}
