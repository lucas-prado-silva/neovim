return {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	dependencies = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{'williamboman/mason.nvim'},           -- Optional
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required

        -- LSP Saga Support
        {'nvimdev/lspsaga.nvim'},
	},
	config = function()
		local lsp = require('lsp-zero').preset({})

		lsp.ensure_installed({'eslint', 'rust_analyzer', 'tsserver', 'graphql' })

		lsp.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp.default_keymaps({buffer = bufnr})

			local opts =  { buffer = bufnr, remap = false }

			vim.keymap.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
			vim.keymap.set("n", "K", function () vim.lsp.buf.hover() end, opts)
			vim.keymap.set("n", "[e", function () vim.diagnostic.goto_next() end, opts)
			vim.keymap.set("n", "]e", function () vim.diagnostic.goto_prev() end, opts)
			vim.keymap.set("n", "[e", function () vim.diagnostic.goto_next() end, opts)
			vim.keymap.set("n", "<leader>vca", function () vim.lsp.buf.code_action() end, opts)
			vim.keymap.set("n", "<leader>vrr", function () vim.lsp.buf.references() end, opts)
			vim.keymap.set("n", "<leader>vrn", function () vim.lsp.buf.rename() end, opts)
		end)

		-- When you don't have mason.nvim installed
		-- You'll need to list the servers installed in your system
        -- lsp.setup_servers({'tsserver', 'eslint'})

		-- (Optional) Configure lua language server for neovim
		require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

		lsp.setup()

        -- You need to setup `cmp` after lsp-zero
        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()

        cmp.setup({
            mapping = {
                -- `Enter` key to confirm completion
                ['<CR>'] = cmp.mapping.confirm({select = true}),

                -- Ctrl+Space to trigger completion menu
                ['<C-Space>'] = cmp.mapping.complete(),

                -- Navigate between snippet placeholder
                ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                ['<C-b>'] = cmp_action.luasnip_jump_backward(),
            }
        })
	end
}
