local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Better window navigation
keymap("n", "<C-h>", "<Cmd>lua require('tmux').move_left()<CR>", opts)
keymap("n", "<C-j>", "<Cmd>lua require('tmux').move_bottom()<CR>", opts)
keymap("n", "<C-k>", "<cmd>lua require('tmux').move_top()<cr>", opts)
keymap("n", "<C-l>", "<cmd>lua require('tmux').move_right()<cr>", opts)

-- Resize with arrows
keymap('n', '<leader>rj', ':resize +3 <CR>', opts)
keymap('n', '<leader>rk', ':resize -3 <CR>', opts)
-- resize right and left
keymap('n', '<leader>rl', ':vertical resize +3 <CR>', opts)
keymap('n', '<leader>rh', ':vertical resize -3 <CR>', opts)

-- Toggle git blame
keymap("n", "<leader>gb", ":GitBlameToggle<CR>", opts)

keymap("n", "<leader>fgf", ":Telescope git_files<CR>", opts)
keymap("n", "<leader>fgc", ":Telescope git_commits<CR>", opts)
keymap("n", "<leader>fgb", ":Telescope git_branches<CR>", opts)
keymap("n", "<leader>fgs", ":Telescope git_status<CR>", opts)
keymap("n", "<leader>fgh", ":Telescope git_stash<CR>", opts)

keymap("n", "<leader>fe", ":Telescope file_browser<CR>", opts)
keymap("n", "<leader>fy", ":Telescope neoclip<CR>", opts)

keymap("n", "<leader>fq", ":Telescope planets<CR>", opts)
keymap("n", "<leader>fc", ":Telescope tailiscope<CR>", opts)

-- Diff view
keymap("n", "<leader>gdo", ":DiffviewOpen<CR>", opts)
keymap("n", "<leader>gdc", ":DiffviewClose<CR>", opts)

keymap("n", "<leader>cl", "<cmd>lua require('zippy').insert_print()<CR>", opts)

-- hlslens
keymap("n", "n", [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "N", [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "*", [[*<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "#", [[#<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "g*", [[g*<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "g#", [[g#<Cmd>lua require('hlslens').start()<CR>]], opts)
keymap("n", "<leader>n", ":noh<CR>", opts)


