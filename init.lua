-- disable netrw for nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("opts")
require("keys")
require("plug")
require("vars")
require("mason").setup()
require("colorscheme")
require("lsp")
require("completion")
require("treesitter")
require("nvim-tree-setup")
