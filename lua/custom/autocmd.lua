-- autoreload file
local auto_reload_group = vim.api.nvim_create_augroup("AutoReload", {clear = true})
vim.api.nvim_create_autocmd(
  {"FocusGained", "BufEnter", "CursorHold", "CursorHoldI"},
  {
    command = [[if mode() != 'c' | checktime | endif]],
    pattern = { "*" },
    group = auto_reload_group,
  }
)

-- remove trailing whitespace
local remove_trailing_whitespace_group = vim.api.nvim_create_augroup("TrailingWhitespace", {clear = true})
vim.api.nvim_create_autocmd(
  {"BufWritePre"},
  {
    command = [[:%s/\s\+$//e]],
    pattern = { "*" },
    group = remove_trailing_whitespace_group,
  }
)
