-- Set lualine as statusline
-- See `:help lualine.txt`
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_c = {
      {
        'filename',
        path = 1
      }
    }
  }
}

-- Enable Comment.nvim
require('Comment').setup()

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require('ibl').setup {
  indent = {
    char = '┊',
  },
  scope = {
    enabled = true,
  }
}

-- Gitsigns
-- See `:help gitsigns.txt`
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

require('custom.plugin-setup.telescope')
require('custom.plugin-setup.treesitter')
require('custom.plugin-setup.mason')
require('custom.plugin-setup.nvim-cmp')

-- Turn on lsp status information
require('fidget').setup({})

-- Enabled lua config for nvim dev
require('lazydev').setup({})

-- color scheme
require('rose-pine').setup({})
