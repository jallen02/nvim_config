return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lsp installer
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- color scheme
    use 'folke/tokyonight.nvim'

    -- lsp stuff
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    -- Completion framework
    use 'hrsh7th/nvim-cmp'

    -- LSP completion source
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'

    -- treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- nvim tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- toggleterm
    use {
        "akinsho/toggleterm.nvim", tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    }

end)
