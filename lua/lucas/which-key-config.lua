local wk = require("which-key")

-- TODO update this

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
