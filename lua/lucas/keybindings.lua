-- SECTION:---------------------------------------
-- SECTION:         NVIM KEYBINDINGS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Leader key
--------------------------------------------------
vim.g.mapleader = " ";

--------------------------------------------------
-- Save file faster
--------------------------------------------------
vim.keymap.set("n", "<leader>s", ":w<CR>")

--------------------------------------------------
-- Quit insert mode faster
--------------------------------------------------
vim.keymap.set("i", "jk", "<ESC>")


-- SECTION:---------------------------------------
-- SECTION:         FILE EXPLORERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Open ChatGPT
--------------------------------------------------
vim.keymap.set("n", "<leader>cc", ":ChatGPT<CR>")

-- SECTION:---------------------------------------
-- SECTION:         FILE EXPLORERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Neotree focus
--------------------------------------------------
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

--------------------------------------------------
-- Neotree focus current buffer
--------------------------------------------------
vim.keymap.set("n", "<leader>E", ":NvimTreeFocus<CR>")

-- SECTION:---------------------------------------
-- SECTION:         BUFFERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Delete buffer
--------------------------------------------------
vim.keymap.set("n", "<S-w>", ":Bdelete<CR>")

--------------------------------------------------
-- Move around buffers
--------------------------------------------------
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")


-- SECTION:---------------------------------------
-- SECTION:         FORMATTERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Format file using nvim LSP
--------------------------------------------------
vim.keymap.set("n", "<leader>lf", function()
	vim.lsp.buf.format()
end)


-- SECTION:---------------------------------------
-- SECTION:         VERTICAL MOVEMENT
-- SECTION:---------------------------------------

--------------------------------------------------
-- Center the screen when moving vertically
--------------------------------------------------
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


-- SECTION:---------------------------------------
-- SECTION:         VOID REGISTERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Paste to the void register
--------------------------------------------------
vim.keymap.set("x", "<leader>p", "\"_dP")

--------------------------------------------------
-- Delete to the void register
--------------------------------------------------
vim.keymap.set("v", "<leader>d", "\"_d")


-- SECTION:---------------------------------------
-- SECTION:         YANKING
-- SECTION:---------------------------------------

--------------------------------------------------
-- Yank to the system clipboard
--------------------------------------------------
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- SECTION:---------------------------------------
-- SECTION:         MOVING TEXT
-- SECTION:---------------------------------------

--------------------------------------------------
-- Move code around inside visual mode
--------------------------------------------------
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- SECTION:---------------------------------------
-- SECTION:         REPLACING TEXT
-- SECTION:---------------------------------------

--------------------------------------------------
-- Replace all instances of current word
--------------------------------------------------
vim.keymap.set("n", "<leader>rr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


-- SECTION:---------------------------------------
-- SECTION:         UTILS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Do not quit vim accidentally
--------------------------------------------------
vim.keymap.set("n", "Q", "<nop>")

--------------------------------------------------
-- Add write permissions to current file
--------------------------------------------------
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- SECTION:---------------------------------------
-- SECTION:         Dunno
-- SECTION:---------------------------------------

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- vim.api.nvim_set_keymap("n", "<leader>dw", "<cmd>Trouble workspace_diagnostics<cr>",
-- { silent = true, noremap = true }
-- )
