return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      prompt_prefix = "   ",
      selection_caret = " ",
      entry_prefix = " ",
      sorting_strategy = "ascending",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
        },
        width = 0.87,
        height = 0.80,
      },
      mappings = {
        n = { ["q"] = require("telescope.actions").close },
      },
    },
    extensions_list = { "themes", "terms" },
    extensions = {},
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope fd<cr>", desc = "Find Files (cwd)" },
    { "<leader><leader>", "<cmd>Telescope fd<cr>", desc = "Find Files (cwd)" },
    { "<leader>fF", "<cmd>Telescope fd cwd=~/<cr>", desc = "Find Files (cwd)" },
  },
}
