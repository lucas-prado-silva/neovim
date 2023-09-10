vim.g.mapleader = " "

-- Opens netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Opens neotree
vim.keymap.set("n", "<leader>e", vim.cmd.Neotree)

-- Save faster
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- Quit insert mode faster
vim.keymap.set("i", "jk", "<ESC>")

-- Format file using nvim LSP
vim.keymap.set("n", "<leader>lf", function()
	vim.lsp.buf.format()
end)

-- Paste to the void register
vim.keymap.set("x", "<leader>p", '"_dP')

-- Delete to the void register
vim.keymap.set("v", "<leader>d", '"_d')

-- Yank to the system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Move code around inside visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- do not quit vim accidentaly
vim.keymap.set("n", "Q", "<nop>")

-- Center the screen when moving vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


