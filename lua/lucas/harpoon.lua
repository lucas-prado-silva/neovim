local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- SECTION:---------------------------------------
-- SECTION:         CREATE MARKS
-- SECTION:---------------------------------------
vim.keymap.set("n", "<leader>ma", mark.add_file)
vim.keymap.set("n", "<leader>mm", ui.toggle_quick_menu)

-- SECTION:---------------------------------------
-- SECTION:         USE MARKS
-- SECTION:---------------------------------------
vim.keymap.set("n", "<leader>m1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>m2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>m3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>m4", function() ui.nav_file(4) end)
