local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    vim.notify("Could not import treesitter")
end

configs.setup {
    ensure_installed = "all", -- one of "all", "maintained" (all parsers with maintainers), or list of languages
    sync_install = false,
    ignore_install = { "phpdoc" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true,
        disable = { "" },
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    }
}
