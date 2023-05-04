local default_opts = { noremap = true, silent = true }

local function map (mode, old_keys, new_keys)
  vim.keymap.set(mode, old_keys, new_keys, default_opts)
end
---------------------------------------
-- INSERT MODE KEYMAPS
---------------------------------------
-- `jk` now exits insert mode
map('i', 'jk', '<ESC>')
map('i', "''", '`')

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

-- harpoon keymaps
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

map('n', '<leader>h', mark.add_file)
map('n', '<leader>o', ui.toggle_quick_menu)
map('n', '<leader>1', function() ui.nav_file(1) end)
map('n', '<leader>2', function() ui.nav_file(2) end)
map('n', '<leader>3', function() ui.nav_file(3) end)
map('n', '<leader>4', function() ui.nav_file(4) end)
map('n', '<leader>5', function() ui.nav_file(5) end)
map('n', '<leader>6', function() ui.nav_file(6) end)
map('n', '<leader>7', function() ui.nav_file(7) end)
map('n', '<leader>8', function() ui.nav_file(8) end)
map('n', '<leader>9', function() ui.nav_file(9) end)

-- vim fugitive keymaps
map('n', '<leader>gd', '<cmd>Git difftool<cr>')
map('n', '<leader>gs', '<cmd>Git<cr>')
map('n', '<leader>gc', '<cmd>Git commit<cr>')
map('n', '<leader>gm', '<cmd>Gdiffsplit<cr>')
map('n', '<leader>gb', '<cmd>G blame<cr>')

-- nvimtree keymaps
map('n', '<leader>f', '<cmd>NvimTreeToggle<cr>')
