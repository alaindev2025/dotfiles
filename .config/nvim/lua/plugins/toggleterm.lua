-- require'toggleterm'
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  lazy = true,
  event = "VeryLazy",
  ---@type ToggleTermConfig
  opts = {
    size = 20,
    open_mapping = { [[<c-\>]], [[<c-_>]], [[<c-/>]] },
    shade_terminals = false,
    direction = "float",
    hide_numbers = true,
    close_on_exit = true,
    float_opts = {
      border = "rounded",
      title_pos = "right",
      winblend = 0,
    },
    -- Esto permite usar esc para salir del modo terminal (opcional)
    on_open = function(term)
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
  },
  keys = {
    { "<leader>ft", "<cmd>ToggleTerm 100 direction=float<cr>", desc = "Toggle terminal" },
    { "<leader>fT", '<cmd>ToggleTerm 101 direction=float dir="~"<cr>', desc = "Toggle terminal (Home)" },
    { "<c-_>", '<cmd>ToggleTerm 101 direction=float dir="~"<cr>', desc = "Toggle terminal (Home)" },
  },
}
