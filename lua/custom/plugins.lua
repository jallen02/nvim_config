return function(use)
  -- hints for key combinations
  use({
    "folke/which-key.nvim",
      config = function()
        require("which-key").setup({})
      end
  })

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function()
      require("nvim-tree").setup()
    end
  }

  use {
    'simrat39/rust-tools.nvim',
  }

  -- use {
  --   'github/copilot.vim',
  -- }

  use {
    'rust-lang/rust.vim'
  }
end
