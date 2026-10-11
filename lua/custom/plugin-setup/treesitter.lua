-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter` (main branch)

-- Add languages to be installed here that you want installed for treesitter
-- Installing parsers requires the tree-sitter CLI and a C compiler.
require('nvim-treesitter').install { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'typescript', 'vimdoc', 'vim' }

require('nvim-treesitter-textobjects').setup {
  select = {
    lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
  },
  move = {
    set_jumps = true, -- whether to set jumps in the jumplist
  },
}

-- Filetypes where treesitter indentation is disabled
local indent_disabled = { python = true, typescript = true }

local function textobject_keymaps(bufnr)
  local select = require('nvim-treesitter-textobjects.select')
  local move = require('nvim-treesitter-textobjects.move')
  local swap = require('nvim-treesitter-textobjects.swap')

  local function map(modes, lhs, rhs)
    vim.keymap.set(modes, lhs, rhs, { buffer = bufnr })
  end

  -- You can use the capture groups defined in textobjects.scm
  local selects = {
    ['aa'] = '@parameter.outer',
    ['ia'] = '@parameter.inner',
    ['af'] = '@function.outer',
    ['if'] = '@function.inner',
    ['ac'] = '@class.outer',
    ['ic'] = '@class.inner',
  }
  for lhs, query in pairs(selects) do
    map({ 'x', 'o' }, lhs, function() select.select_textobject(query, 'textobjects') end)
  end

  local moves = {
    goto_next_start = { [']m'] = '@function.outer', [']]'] = '@class.outer' },
    goto_next_end = { [']M'] = '@function.outer', [']['] = '@class.outer' },
    goto_previous_start = { ['[m'] = '@function.outer', ['[['] = '@class.outer' },
    goto_previous_end = { ['[M'] = '@function.outer', ['[]'] = '@class.outer' },
  }
  for fn, keymaps in pairs(moves) do
    for lhs, query in pairs(keymaps) do
      map({ 'n', 'x', 'o' }, lhs, function() move[fn](query, 'textobjects') end)
    end
  end

  map('n', '<leader>a', function() swap.swap_next '@parameter.inner' end)
  map('n', '<leader>A', function() swap.swap_previous '@parameter.inner' end)
end

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('TreesitterSetup', { clear = true }),
  callback = function(args)
    -- Only buffers with an installed parser get treesitter features
    if not pcall(vim.treesitter.start, args.buf) then
      return
    end
    if not indent_disabled[vim.bo[args.buf].filetype] then
      vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
    textobject_keymaps(args.buf)
  end,
})

-- Incremental selection now uses Neovim's built-in `an` / `in` (see `:help v_an`)
vim.keymap.set('n', '<c-space>', 'van', { remap = true, desc = 'Start incremental selection' })
vim.keymap.set('x', '<c-space>', 'an', { remap = true, desc = 'Expand selection to parent node' })
vim.keymap.set('x', '<c-backspace>', 'in', { remap = true, desc = 'Shrink selection to child node' })
