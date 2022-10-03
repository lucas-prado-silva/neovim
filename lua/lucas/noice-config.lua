-- skip search_count messages instead of showing them as virtual text
require("noice").setup({
	routes = {
		{
			filter = { event = "msg_show", kind = "search_count" },
			opts = { skip = true },
		},
		{
			view = "split",
			filter = { event = "msg_show", min_height = 20 },
		},
	},
	popup = {
		position = "100%"
	}
})
