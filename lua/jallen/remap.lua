local keymap = require("jallen.keymap")
local nnoremap = keymap.nnoremap
local inoremap = keymap.inoremap

-----------------------------------
-- Normal Mode 
-----------------------------------
-- open up file explorer
nnoremap("<leader>e", "<cmd>Ex<CR>")

-- split navigation
nnoremap("<leader>h", "<C-W>h")
nnoremap("<leader>j", "<C-W>j")
nnoremap("<leader>k", "<C-W>k")
nnoremap("<leader>l", "<C-W>l")

-----------------------------------
-- Insert Mode
-----------------------------------
-- easy exit of insert mode
inoremap("jk", "<Esc>")

