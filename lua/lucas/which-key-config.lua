local wk = require("which-key")

wk.register({
    f = {
        name = "find", -- optional group name
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
