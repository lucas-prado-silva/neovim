local wk = require("which-key")

require("which-key").setup {
	operators = { gc = "Comments" },
	window = {
		border = "none", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 0
	},
	show_keys = true, -- show the currently pressed key and its label as a message in the command line
	triggers = "auto", -- automatically setup triggers
	disable = {
		buftypes = {},
		filetypes = { "TelescopePrompt" },
	},
}

wk.register({
	f = {
		name = "find",
		g = {
			name = "git"
		}
	},
	l = {
		name = "lsp"
	},
	c = {
		name = "code"
	},
	r = {
		name = "resize"
	},
	g = {
		name = "git",
		d = {
			name = "diff"
		}
	},
	d = {
		name = "diagnostics"
	},
	a = {
		name = "alpha"
	},
	m = {
		name = "move"
	},
	s = {
		name = "spectre"
	},
	t = {
		name = "tests"
	}
}, { prefix = "<leader>" })
