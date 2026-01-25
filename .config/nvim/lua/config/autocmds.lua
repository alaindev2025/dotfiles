local autocmd = vim.api.nvim_create_autocmd

autocmd("BufEnter", {
  pattern = { "Cargo.toml", "Cargo.lock", "*.rs" },
  callback = function(ev)
    require("toggleterm").exec("alias ?='cargo run -q --' && clear", 1, 0, "./", "float", "", false, false)
    vim.api.nvim_del_autocmd(ev.id)
  end,
})
