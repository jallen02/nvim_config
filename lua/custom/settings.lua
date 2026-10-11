----------------------------------------
-- [[ Setting options ]]
-- See `:help vim.o`
----------------------------------------

vim.o.scrolloff = 8
vim.o.relativenumber = true

vim.o.autoread = true

vim.o.swapfile = false

vim.g.claude_api_key = vim.env.ANTHROPIC_API_KEY

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

