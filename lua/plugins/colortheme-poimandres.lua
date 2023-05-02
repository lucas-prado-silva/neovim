return {
	{
		"olivercederborg/poimandres.nvim",
		enabled = false,
		pin = true,
		event = "VimEnter",
		config = function()
			-- Default options
			require("poimandres").setup({
				bold_vert_split = false, -- use bold vertical separators
				dim_nc_background = false, -- dim 'non-current' window backgrounds
				disable_background = false, -- disable background
				disable_float_background = false, -- disable background for floats
				disable_italics = false, -- disable italics
			})

			-- setup must be called before loading
			vim.cmd("colorscheme poimandres")
		end,
	},
}
