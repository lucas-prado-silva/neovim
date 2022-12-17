-- :help options

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Backups
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.backup = false                          -- creates a backup file

-- Undo
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Clipboard
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard

-- Searching
vim.opt.hlsearch = false                         -- highlight all matches on previous search pattern
vim.opt.incsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                      	 -- ignore case in search patterns

-- Colors
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)

-- Scrolling
vim.opt.sidescrolloff = 8

-- CMP
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp

-- Markdown
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files

-- Files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file

-- Mouse support
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim

-- UI
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.cmdheight = 0                           -- more space in the neovim command line for displaying messages
vim.opt.numberwidth = 2                         -- set number column width to 2 {default 4}
vim.cmd [[set laststatus=0]]

-- Formatting
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.expandtab = false                       -- convert tabs to spaces
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.tabstop = 4

-- Splits
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window

-- Performance
vim.opt.timeoutlen = 500                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.updatetime = 50                         -- faster completion (4000ms default)
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time

-- Line numbers
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- set relative numbered lines

-- What vim considers as word boundaries
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

-- no idea what this does
vim.cmd [[set formatoptions-=cro]]
vim.opt.shortmess:append "c"
