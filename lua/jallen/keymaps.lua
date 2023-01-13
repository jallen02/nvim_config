---------------------------------------
-- INSERT MODE KEYMAPS
---------------------------------------
-- `jk` now exits insert mode
vim.keymap.set('i', 'jk', '<ESC>')

---------------------------------------
-- NORMAL MODE KEYMAPS
---------------------------------------
-- center view when navigating up and down by window
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
