local wk = require("which-key")

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
