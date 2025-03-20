local default_opts = { noremap = true, silent = true }

local function map (mode, old_keys, new_keys)
  vim.keymap.set(mode, old_keys, new_keys, default_opts)
end
---------------------------------------
-- INSERT MODE KEYMAPS
---------------------------------------
-- `jk` now exits insert mode
vim.keymap.set('i', 'jk', '<ESC>')

--------------------------------------
-- NORMAL MODE KEYMAPS
--------------------------------------
-- center view when navigating up and down by window
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- reload config
vim.keymap.set('n', '<leader>sv', ':luafile $MYVIMRC<CR>', { desc = "Reload Vim config" })

-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- harpoon keymaps
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>hh', mark.add_file, { desc = "Add file to harpoon" })
vim.keymap.set('n', '<leader>hc', mark.clear_all, { desc = "[H]arpoon [C]lear" })
vim.keymap.set('n', '<leader>ho', ui.toggle_quick_menu, { desc = "[H]arpoon [O]pen" })

for i = 1, 9 do
  vim.keymap.set('n', '<leader>h' .. i, function() ui.nav_file(i) end, { desc = "[H]arpoon id [" .. i .. "]" })
end

-- vim fugitive keymaps
vim.keymap.set('n', '<leader>gd', '<cmd>Git difftool<cr>', { desc = "[G]it [D]ifftool" })
vim.keymap.set('n', '<leader>gg', '<cmd>Git<cr>', { desc = "[G][G]it" })
vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<cr>', { desc = "[G]it [C]ommit" })
vim.keymap.set('n', '<leader>gm', '<cmd>Gdiffsplit<cr>', { desc = "[G]it [M]erge" })
vim.keymap.set('n', '<leader>gb', '<cmd>G blame<cr>', { desc = "[G]it [B]lame" })

-- nvimtree keymaps
vim.keymap.set('n', '<leader>f', '<cmd>NvimTreeToggle<cr>', { desc = "Open NvimTree" })
