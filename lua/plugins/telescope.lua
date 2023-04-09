return {
	"nvim-telescope/telescope.nvim",
	keys = {
		-- disable the sk keymap and override it with the saving thing
		{ "<leader>sk", ":w<CR>" },
		{ "<leader>sh", ":w<CR>" },
		-- change a keymap
		-- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		-- add a keymap to browse plugin files
		-- {
		--   "<leader>fp",
		--   function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
		--   desc = "Find Plugin File",
		-- },
	},
}
