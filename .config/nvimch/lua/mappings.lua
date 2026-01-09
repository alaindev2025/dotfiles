require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- CMD with <;>
map("n", ";", ":", { desc = "CMD enter command mode" })

-- <jk> to normal mode
map("i", "jk", "<ESC>")

-- Save with <ctrl-s>
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>")

-- Find files with <leader><leader>
map("n", "<leader><leader>", "<cmd> Telescope fd <cr>", { desc = "Find files" })

-- Open lazy menu with <leader>l
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Move lines
map("n", "<M-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<M-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<M-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<M-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<M-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
