local opts = { noremap = true, silent = true }
local map = vim.keymap.set
-- local wk = require("which-key").add

map("i", "jk", "<Esc>", opts)
map("n", ";", ":")
map("n", "!", ":!")
