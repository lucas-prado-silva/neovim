local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--  normal_mode = "n",
--  insert_mode = "i",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  term_mode = "t",
--  command_mode = "c",

-- Normal --
-- Use leader w to save
keymap("n", "<leader>s", ":w<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap('n', '<leader>rj', ':resize +3 <CR>', opts)
keymap('n', '<leader>rk', ':resize -3 <CR>', opts)
-- resize right and left
keymap('n', '<leader>rl', ':vertical resize +3 <CR>', opts)
keymap('n', '<leader>rh', ':vertical resize -3 <CR>', opts)

-- Naviagate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Delete buffer
keymap("n", "<S-w>", ":Bdelete<CR>", opts)

-- Move text up and down
keymap("n", "<leader>mk", "<Esc>:m +1<CR>", opts)
keymap("n", "<leader>mj", "<Esc>:m -2<CR>", opts)

-- File tree
keymap("n", "<leader>e", ":Neotree toggle=false position=right<CR>", opts)
keymap("n", "<leader>gs", ":Neotree position=float source=git_status<CR>", opts)

-- Toggle git blame
keymap("n", "<leader>gb", ":GitBlameToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)

keymap("n", "<leader>fgf", ":Telescope git_files<CR>", opts)
keymap("n", "<leader>fgc", ":Telescope git_commits<CR>", opts)
keymap("n", "<leader>fgb", ":Telescope git_branches<CR>", opts)
keymap("n", "<leader>fgs", ":Telescope git_status<CR>", opts)
keymap("n", "<leader>fgh", ":Telescope git_stash<CR>", opts)

keymap("n", "<leader>fe", ":Telescope file_browser<CR>", opts)
keymap("n", "<leader>fm", ":Telescope emoji<CR>", opts)
keymap("n", "<leader>fy", ":Telescope neoclip<CR>", opts)
keymap("n", "<leader>fz", ":Telescope resume<CR>", opts)

keymap("n", "<leader>flr", ":Telescope lsp_references<CR>", opts)
keymap("n", "<leader>flg", ":Telescope lsp_diagnostics bufnr=0<CR>", opts)
keymap("n", "<leader>fld", ":Telescope lsp_definitions<CR>", opts)
keymap("n", "<leader>fli", ":Telescope lsp_implementations<CR>", opts)

keymap("n", "<leader>fq", ":Telescope planets<CR>", opts)

-- Diff view
keymap("n", "<leader>gdo", ":DiffviewOpen<CR>", opts)
keymap("n", "<leader>gdc", ":DiffviewClose<CR>", opts)

-- Alpha
keymap("n", "<leader>aa", ":Alpha<CR>", opts)

-- Cybu
keymap("n", "<tab>", ":CybuLastusedPrev<CR>", opts)
keymap("n", "<s-tab>", ":CybuLastusedNext<CR>", opts)

keymap("n", "<leader>cl", "<cmd>lua require('zippy').insert_print()<CR>", opts)

-- Spectre
-- keymap("n", "<leader>ss", "<cmd>lua require('spectre').open()<CR>", opts)
-- keymap("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", opts)
-- keymap("n", "<leader>sv", "<cmd>lua require('spectre').open_visual()<CR>", opts)
-- keymap("n", "<leader>sf", "<cmd>lua require('spectre').open_file_search()<CR>", opts)
--
-- hlslens
keymap("n", "n", [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "N", [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "*", [[*<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "#", [[#<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "g*", [[g*<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "g#", [[g#<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "<leader>n", ":noh<CR>", opts)

-- trouble diagnostics
vim.api.nvim_set_keymap("n", "<leader>dw", "<cmd>Trouble workspace_diagnostics<cr>",
	{ silent = true, noremap = true }
)

-- Testing
-- These are not working yet
keymap("n", "<leader>tt", ":lua require('neotest').run.run()<CR>", opts)
keymap("n", "<leader>tf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", opts)
-- keymap("n", "<leader>tjr", ":lua require('jester').run()<CR>", opts)
-- keymap("n", "<leader>tjf", ":lua require('jester').run_file()<CR>", opts)
-- keymap("n", "<leader>tjl", ":lua require('jester').run_last()<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal -
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
