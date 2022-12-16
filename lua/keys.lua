function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "jk", "<Esc>")

-- window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- nvim tree toggle
map("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")

-- esc in normal mode clears highlights
map("n", "<Esc>", "<cmd>:noh<CR>")

-- C-u and C-d center the viewing window
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")

-- gitui toggle
map("n", "<leader>g", "<cmd>:lua _GITUI_TOGGLE()<CR>")
