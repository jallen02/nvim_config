-- :help options for more detailed information about each option
vim.opt.backup = false -- don't write backup file
vim.opt.clipboard = "unnamedplus" -- access to system clipboard
vim.opt.cmdheight = 2 -- more room in command area
vim.opt.completeopt = { "menuone", "noselect" } -- for cmp
vim.opt.conceallevel = 0 -- make `` visible in md files
vim.opt.fileencoding = "utf-8" -- write files using utf-8
vim.opt.hlsearch = true -- highlight all instances of a search pattern
vim.opt.ignorecase = true -- ignore case in searches
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- don't show vim mode
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smartcase for searching
vim.opt.smartindent = true -- location aware indenting
vim.opt.splitbelow = true -- always split below the window
vim.opt.splitright = true -- always split to the right of the window
vim.opt.swapfile = true -- use a swap file
vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000 -- time for input sequence
vim.opt.undofile = true -- persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- don't write a backup file
vim.opt.expandtab = true -- use spaces not tabs
vim.opt.shiftwidth = 4 -- indentation width
vim.opt.tabstop = 4 -- tab width
vim.opt.cursorline = true -- line below cursor
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = false -- don't use relative numbers
vim.opt.numberwidth = 4 -- extra room for line numbers
vim.opt.signcolumn = "yes" -- always have sign column on screen so text doesn't get shifted
vim.opt.wrap = false -- don't wrap lines
vim.opt.scrolloff = 8 -- keep 8 characters past cursor on screen
vim.opt.sidescrolloff = 8
vim.opt.mouse = "a" -- can use your mouse (...why? to close buffers!)

vim.opt.shortmess:append "c" -- don't give ins-completion-menu messages

vim.opt.whichwrap:append "<,>,[,]" -- allow arrow keys to wrap to next line
