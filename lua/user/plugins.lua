local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing Packer, close and reopen Neovim ..."
    vim.cmd [[packadd packer.nvim]]
end
-- Autocommand to reload plugins whenever plugins.lua is saved
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out of config call stack
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    print("Could not import packer, exiting plugins.lua")
    return
end

-- Have packer use a popup window (consider commenting out)
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    }
}

-- Install plugins here
return packer.startup(function(use)
    -- Utility
    use "wbthomason/packer.nvim" -- Packer manages packer
    use "nvim-lua/popup.nvim" -- implementation of popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- useful lua functions used by other plugins
    use "kyazdani42/nvim-web-devicons" -- icons for tree

    -- Colorschemes
    use "sainnhe/sonokai"

    -- Completions
    use "hrsh7th/nvim-cmp" -- Completion plugin
    use "hrsh7th/cmp-buffer" -- Buffer completions
    use "hrsh7th/cmp-path" -- Path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "hrsh7th/cmp-nvim-lsp" -- lsp completions
    use "hrsh7th/cmp-nvim-lua" -- lua completions

    -- Snippets
    use "L3MON4D3/LuaSnip" -- snippet engine

    -- LSP
    use "neovim/nvim-lspconfig" --LSP
    use "williamboman/nvim-lsp-installer" -- language server installer

    -- Telescope
    use "nvim-telescope/telescope.nvim" -- fuzzy searcher

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "p00f/nvim-ts-rainbow"

    -- QOL
    use "windwp/nvim-autopairs" -- autopair containers

    -- git
    use "lewis6991/gitsigns.nvim"

    -- file navigation
    use "kyazdani42/nvim-tree.lua" -- nvim tree
    use "akinsho/bufferline.nvim" -- bufferline
    use "moll/vim-bbye" -- close buffers without closing windows

    -- linting
    use "jose-elias-alvarez/null-ls.nvim" -- linting/formatting

    -- terminal
    use "akinsho/toggleterm.nvim" -- toggleterm

    -- Set up configuration after cloning packer.nvim
    -- Put this after ALL plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
