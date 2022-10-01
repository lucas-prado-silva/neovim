local wk = require("which-key")

wk.register({
	f = {
		name = "find",
	},
	r = {
		name = "resize"
	},
	g = {
		name = "git"
	},
	d = {
		name = "diagnostics"
	},
	a = {
		name = "alpha"
	},
}, { prefix = "<leader>" })
