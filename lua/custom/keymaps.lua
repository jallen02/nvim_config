local default_opts = { noremap = true, silent = true }

local function map (mode, old_keys, new_keys)
  vim.keymap.set(mode, old_keys, new_keys, default_opts)
end
---------------------------------------
-- INSERT MODE KEYMAPS
---------------------------------------
-- `jk` now exits insert mode
map('i', 'jk', '<ESC>')

--------------------------------------
-- NORMAL MODE KEYMAPS
--------------------------------------
-- center view when navigating up and down by window
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- reload config
map('n', '<leader>sv', ':luafile $MYVIMRC<CR>')

-- window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

