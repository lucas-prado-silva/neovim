require("impatient")
require("lucas.options")
require("lucas.keymaps")
require("lucas.plugins")
require("lucas.indent-blankline-config")
require("lucas.colorscheme-config")
-- require("lucas.ide-config")
require("lucas.illuminate-config")
require("lucas.mason-config")
require("lucas.lsp-config")
require("lucas.cmp-config")
require("lucas.nvim-tree-config")
require("lucas.comment-config")
require("lucas.telescope-config")
require("lucas.project-config");
require("lucas.bufferline-config")
require("lucas.treesitter-config")
require("lucas.lualine-config")
require("lucas.alpha-config")
require("lucas.autopairs-config")
require("lucas.gitsigns-config")
require("lucas.git-blame-config")
require("lucas.toggleterm-config")
require("lucas.numb-config")
require("lucas.colorizer-config")
require("lucas.which-key-config")
require("lucas.leap-config")
require("lucas.spectre-config")
require("lucas.cybu-config")
require("lucas.tabnine-config")
require("lucas.scrollbar-config")
require("lucas.context-config")
require("lucas.luasnip-config")
require("lucas.neotest-config")
require("lucas.noice-config")
require("lucas.notify-config")

-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
	virtual_text = false,
})

-- transparency
-- vim.cmd('hi! Normal ctermbg=NONE guibg=NONE')
-- vim.cmd('hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE')

-- show tabby
-- vim.o.showtabline = 2
