local telescope_builtin = require("telescope.builtin")

local opts = { noremap = true, silent = true }

-- SECTION:---------------------------------------
-- SECTION:         BUILTIN PICKERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Find files in current dir
--------------------------------------------------
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, opts)

--------------------------------------------------
-- Find files in current git repo
--------------------------------------------------
vim.keymap.set("n", "<leader>fgf", telescope_builtin.git_files, opts)

--------------------------------------------------
-- Find recently opened files
--------------------------------------------------
vim.keymap.set("n", "<leader>fr", telescope_builtin.oldfiles, opts)

--------------------------------------------------
-- Find text in current dir using live grep
--------------------------------------------------
vim.keymap.set("n", "<leader>ft", telescope_builtin.live_grep, opts)

--------------------------------------------------
-- Find currently opened buffers
--------------------------------------------------
vim.keymap.set("n", "<leader>fbb", telescope_builtin.buffers, opts)

--------------------------------------------------
-- Find search history
--------------------------------------------------
vim.keymap.set("n", "<leader>fs", telescope_builtin.search_history, opts)

--------------------------------------------------
-- Find installed colorschemes
--------------------------------------------------
vim.keymap.set("n", "<leader>fc", telescope_builtin.colorscheme, opts)

--------------------------------------------------
-- Find vim highlights
--------------------------------------------------
vim.keymap.set("n", "<leader>fvh", telescope_builtin.highlights, opts)

--------------------------------------------------
-- Resume latest search
--------------------------------------------------
vim.keymap.set("n", "<leader>fo", telescope_builtin.resume, opts)

--------------------------------------------------
-- TODO: Not working Fuzzy find inside current buffer
--------------------------------------------------
vim.keymap.set("n", "<leader>fbt", telescope_builtin.current_buffer_fuzzy_find, opts)

--------------------------------------------------
-- Find projects
--------------------------------------------------
vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>")


-- SECTION:---------------------------------------
-- SECTION:         LSP PICKERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Find LSP references
--------------------------------------------------
vim.keymap.set("n", "<leader>lR", telescope_builtin.lsp_references, opts)

--------------------------------------------------
-- Find LSP implementations
--------------------------------------------------
vim.keymap.set("n", "<leader>lI", telescope_builtin.lsp_implementations, opts)

--------------------------------------------------
-- Find LSP definitions
--------------------------------------------------
vim.keymap.set("n", "<leader>lD", telescope_builtin.lsp_definitions, opts)

--------------------------------------------------
-- Find LSP type definition
--------------------------------------------------
vim.keymap.set("n", "<leader>lT", telescope_builtin.lsp_type_definitions, opts)

--------------------------------------------------
-- Find LSP diagnostics
--------------------------------------------------
vim.keymap.set("n", "<leader>lx", telescope_builtin.diagnostics, opts)

--------------------------------------------------
-- Find LSP quickfixes
--------------------------------------------------
vim.keymap.set("n", "<leader>lq", telescope_builtin.quickfix, opts)


-- SECTION:---------------------------------------
-- SECTION:         GIT PICKERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Find git commits
--------------------------------------------------
vim.keymap.set("n", "<leader>fgcc", telescope_builtin.git_commits, opts)

--------------------------------------------------
-- Find git commits from current buffer
--------------------------------------------------
vim.keymap.set("n", "<leader>fgcb", telescope_builtin.git_bcommits, opts)

--------------------------------------------------
-- Find git branches
--------------------------------------------------
vim.keymap.set("n", "<leader>fgb", telescope_builtin.git_branches, opts)

--------------------------------------------------
-- Find git status
--------------------------------------------------
vim.keymap.set("n", "<leader>gs", telescope_builtin.git_status, opts)

--------------------------------------------------
-- Find git stash
--------------------------------------------------
vim.keymap.set("n", "<leader>fgs", telescope_builtin.git_stash, opts)

