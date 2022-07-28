local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "



---------------------- NORMAL MODE REMAPPINGS ---------------------
-- split navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- open file explorer
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- resize with arrows
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-Down>", ":resize +2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)


-- format document
keymap("n", "<C-S-f>", ":Format<cr>", opts)


-- find files
keymap("n", "<leader>p", ":Telescope find_files<cr>", opts)


-- search in directory for text
keymap("n", "<leader>f", ":Telescope live_grep<cr>", opts)



---------------------- INSERT MODE REMAPPINGS ---------------------
-- leave insert mode with jk, kj
keymap("i", "jk", "<Esc>", opts)
keymap("i", "kj", "<Esc>", opts)



---------------------- VISUAL MODE REMAPPINGS ---------------------
-- keep selection when indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

