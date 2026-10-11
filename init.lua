-- Entry point. Plugins are managed by lazy.nvim and declared in lua/custom/plugins.lua.
-- Any additional configuration should be in separate files under lua/custom/.

-- Set <space> as the leader key before any plugins or mappings are loaded
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', 'https://github.com/folke/lazy.nvim.git', lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('custom.settings')

-- Plugin specs live in ~/.config/nvim/lua/custom/plugins.lua
require('lazy').setup(require('custom.plugins'), {
  install = { colorscheme = { 'rose-pine' } },
  change_detection = { notify = false },
})

require('custom.autocmd')
require('custom.plugin-setup')
require('custom.keymaps')
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=4 sts=4 sw=4 et
