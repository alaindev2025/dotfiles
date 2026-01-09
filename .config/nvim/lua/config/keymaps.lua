local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("i", "jk", "<Esc>", opts)
map("n", ";", ":")
