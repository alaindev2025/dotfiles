return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      section_separators = { left = "", right = "" },
      component_separators = "",
    },
    sections = {
      lualine_a = { { "mode", right_padding = 2 } },
      lualine_b = { { "filename" }, { "branch" } },
      lualine_c = { "lsp_status" },
      lualine_x = { "diff" },
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
    },
  },
}
