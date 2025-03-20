-- See `:help vim.keymap.set()`
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


-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Telescope keymaps `help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>p', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').lsp_references, { desc = '[S]earch [D]iagnostics' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open diagnostics float' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open list of diagnostics' } )
