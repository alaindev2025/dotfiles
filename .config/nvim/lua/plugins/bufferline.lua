return {
  "akinsho/bufferline.nvim",
  lazy = true,
  event = "VeryLazy",
  ---@type bufferline.UserConfig
  opts = {
    ---@type bufferline.Options
    options = {
      max_name_length = 12,
      tab_size = 5,

      offsets = {
        {
          filetype = "NvimTree",
          text = "",
          text_align = "center",
          separator = false,
        },
      },
    },
  },
}
