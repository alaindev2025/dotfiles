return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 30,
    },
    source = {
      "document_symbols",
    },
    source_selector = {
      winbar = true,
      statusline = false,
    },
    popup_border_style = "rounded",
  },

  lazy = true,
  event = "VeryLazy",
}
