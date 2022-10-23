local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	--Enable completion triggered by <c-x><c-o>
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- go to declaration
	buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	-- go to definition
	buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
	-- go to implementation
	buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

	-- Show code actions from LSP Saga
	buf_set_keymap('v', '<space>ca', '<cmd><C-U>Lspsaga range_code_action<CR>', opts)
	buf_set_keymap('n', '<space>ca', '<cmd>Lspsaga code_action<CR>', opts)

	-- Navigate through code diagnostics
	buf_set_keymap('n', '<leader>lj', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
	buf_set_keymap('n', '<leader>lk', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)

	-- Show line diagnostics
	buf_set_keymap("n", "<leader>ll", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

	-- Show cursor diagnostic
	buf_set_keymap("n", "<leader>lc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

	-- Show Treesitter Outline
	buf_set_keymap("n", "<leader>lo", "<cmd>LSoutlineToggle<CR>", { silent = true })

	-- Hover docs
	buf_set_keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)

	-- Open LSP saga finder
	buf_set_keymap('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)

	-- Open signature help in insert mode
	buf_set_keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)

	-- LSP Saga preview definition
	buf_set_keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)

	-- LSP Saga Rename a variable
	buf_set_keymap('n', '<space>rr', '<Cmd>Lspsaga rename<CR>', opts)

	-- Format the document
	buf_set_keymap('n', '<space>lf', '<Cmd>lua vim.lsp.buf.format ()<CR>', opts)

	-- Attach Navic to the current buffer
	navic.attach(client, bufnr)
end

protocol.CompletionItemKind = {
	'', -- Text
	'', -- Method
	'', -- Function
	'', -- Constructor
	'', -- Field
	'', -- Variable
	'', -- Class
	'ﰮ', -- Interface
	'', -- Module
	'', -- Property
	'', -- Unit
	'', -- Value
	'', -- Enum
	'', -- Keyword
	'﬌', -- Snippet
	'', -- Color
	'', -- File
	'', -- Reference
	'', -- Folder
	'', -- EnumMember
	'', -- Constant
	'', -- Struct
	'', -- Event
	'ﬦ', -- Operator
	'', -- TypeParameter
}

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').update_capabilities(
	vim.lsp.protocol.make_client_capabilities()
)

capabilities.textDocument.completion.completionItem = {
	documentationFormat = { "markdown", "plaintext" },
	snippetSupport = true,
	preselectSupport = true,
	insertReplaceSupport = true,
	labelDetailsSupport = true,
	deprecatedSupport = true,
	commitCharactersSupport = true,
	tagSupport = { valueSet = { 1 } },
	resolveSupport = {
		properties = {
			"documentation",
			"detail",
			"additionalTextEdits",
		},
	},
}

local rt = require("rust-tools")
rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "<leader>ca", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})

nvim_lsp.flow.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

nvim_lsp.tsserver.setup {
	on_attach = on_attach,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
	capabilities = capabilities
}

nvim_lsp.sourcekit.setup {
	on_attach = on_attach,
}

nvim_lsp.sumneko_lua.setup {
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},

			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false
			},
		},
	},
}

nvim_lsp.tailwindcss.setup {}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = false,
	update_in_insert = false,
	virtual_text = { spacing = 4, prefix = "●" },
	severity_sort = true,
})

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
	virtual_text = {
		prefix = '●'
	},
	update_in_insert = true,
	float = {
		source = "always", -- Or "if_many"
	},
})
