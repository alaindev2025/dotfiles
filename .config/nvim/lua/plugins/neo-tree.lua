return {
  "nvim-neo-tree/neo-tree.nvim",
  ---@type neotree.Config
  opts = {
    window = { width = 30 },
    source = { "document_symbols" },
    popup_border_style = "rounded",
  },

  lazy = true,
  event = "VeryLazy",
}
