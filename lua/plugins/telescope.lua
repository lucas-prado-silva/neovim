return {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function () 
		require('telescope').setup {
			extensions = {
				fzf = {
					fuzzy = true,                    -- false will only do exact matching
					override_generic_sorter = true,  -- override the generic sorter
					override_file_sorter = true,     -- override the file sorter
					case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				}
			}
		}

		-- To get fzf loaded and working with telescope, you need to call
		-- load_extension, somewhere after setup function:
		require('telescope').load_extension('fzf')
		
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fr', builtin.resume, {})
		vim.keymap.set('n', '<leader>fgf', builtin.git_files, {})
		vim.keymap.set('n', '<leader>fs', function () 
			builtin.grep_string({ search = vim.fn.input("Grep > ")});
		end, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	end
}
