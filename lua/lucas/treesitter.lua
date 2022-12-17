require'nvim-treesitter.configs'.setup {
	ensure_installed = { "typescript", "lua", "javascript" },
	highlight = {
		enable = true,
		disable = { "c" },
		additional_vim_regex_highlighting = false,
	},
}
