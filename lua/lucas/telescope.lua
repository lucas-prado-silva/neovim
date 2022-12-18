local telescope_builtin = require("telescope.builtin")

-- SECTION:---------------------------------------
-- SECTION:         BUILTIN PICKERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Find files in current dir
--------------------------------------------------
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})

--------------------------------------------------
-- Find files in current git repo
--------------------------------------------------
vim.keymap.set("n", "<leader>fgf", telescope_builtin.git_files, {})

--------------------------------------------------
-- Find recently opened files
--------------------------------------------------
vim.keymap.set("n", "<leader>fof", telescope_builtin.oldfiles, {})

--------------------------------------------------
-- Find text in current dir using live grep
--------------------------------------------------
vim.keymap.set("n", "<leader>ft", telescope_builtin.live_grep, {})

--------------------------------------------------
-- Find currently opened buffers
--------------------------------------------------
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})

--------------------------------------------------
-- Find search history
--------------------------------------------------
vim.keymap.set("n", "<leader>fsh", telescope_builtin.search_history, {})

--------------------------------------------------
-- Find installed colorschemes
--------------------------------------------------
vim.keymap.set("n", "<leader>fcs", telescope_builtin.colorscheme, {})

--------------------------------------------------
-- Find vim highlights
--------------------------------------------------
vim.keymap.set("n", "<leader>fvh", telescope_builtin.highlights, {})

--------------------------------------------------
-- Resume latest search
--------------------------------------------------
vim.keymap.set("n", "<leader>ftr", telescope_builtin.resume, {})

--------------------------------------------------
-- Fuzzy find inside current buffer NOT WORKING
--------------------------------------------------
vim.keymap.set("n", "<leader>fbt", telescope_builtin.current_buffer_fuzzy_find, {})

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
vim.keymap.set("n", "<leader>flr", telescope_builtin.lsp_references, {})

--------------------------------------------------
-- Find LSP implementations
--------------------------------------------------
vim.keymap.set("n", "<leader>fli", telescope_builtin.lsp_implementations, {})

--------------------------------------------------
-- Find LSP definitions
--------------------------------------------------
vim.keymap.set("n", "<leader>fld", telescope_builtin.lsp_definitions, {})

--------------------------------------------------
-- Find LSP type definition
--------------------------------------------------
vim.keymap.set("n", "<leader>flt", telescope_builtin.lsp_type_definitions, {})

--------------------------------------------------
-- Find LSP diagnostics
--------------------------------------------------
vim.keymap.set("n", "<leader>flx", telescope_builtin.diagnostics, {})

--------------------------------------------------
-- Find LSP quickfixes
--------------------------------------------------
vim.keymap.set("n", "<leader>fqf", telescope_builtin.quickfix, {})


-- SECTION:---------------------------------------
-- SECTION:         GIT PICKERS
-- SECTION:---------------------------------------

--------------------------------------------------
-- Find git commits
--------------------------------------------------
vim.keymap.set("n", "<leader>gc", telescope_builtin.git_commits, {})

--------------------------------------------------
-- Find git commits from current buffer
--------------------------------------------------
vim.keymap.set("n", "<leader>gbc", telescope_builtin.git_bcommits, {})

--------------------------------------------------
-- Find git branches
--------------------------------------------------
vim.keymap.set("n", "<leader>gr", telescope_builtin.git_branches, {})

--------------------------------------------------
-- Find git status
--------------------------------------------------
vim.keymap.set("n", "<leader>gs", telescope_builtin.git_status, {})

--------------------------------------------------
-- Find git stash
--------------------------------------------------
vim.keymap.set("n", "<leader>gh", telescope_builtin.git_stash, {})
