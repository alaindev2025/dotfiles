return {
  "akinsho/bufferline.nvim",
  lazy = true,
  event = "LazyFile",
  ---@type bufferline.UserConfig
  opts = {
    ---@type bufferline.Options
    options = {
      max_name_length = 12,
      tab_size = 5,
      style_preset = 4,
    },
  },
}
