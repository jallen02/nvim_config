-- compile parsers from source
require('nvim-treesitter.install').prefer_git = true

-- Treesitter Plugin Setup 
require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua", "rust", "toml" },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting=false,
    },
    indent = { enable = true }, 
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}

