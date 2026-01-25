-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Configures rust workspace
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "Cargo.toml", "Cargo.lock", "*.rs" },
  callback = function(ev)
    require("toggleterm").exec("alias ?='cargo run -q --' && clear", 1, 0, "./", "float", "", false, false)
    vim.api.nvim_del_autocmd(ev.id)
  end,
})
