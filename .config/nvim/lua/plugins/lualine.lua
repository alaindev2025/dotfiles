return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      section_separators = { left = "", right = "" },
      component_separators = "",
    },

    sections = {
      lualine_a = { { "mode", right_padding = 2 } },

      lualine_b = {
        { "branch" },
        {
          "filename",
          symbols = {
            modfied = "",
            readonly = "",
            unnamed = "",
          },
        },
      },

      lualine_c = {
        {
          "lsp_status",
          icon = { "  LSP ~" },
          symbols = {
            spinner = { "", "󰪞", "󰪟", "󰪠", "󰪡", "󰪢", "󰪣", "󰪤", "󰪥", "" },
            done = "",
          },
        },
        { "diagnostics" },
      },
    },

    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
    },

    extensions = {
      "nvim-tree",
      "toggleterm",
      "trouble",
      "lazy",
      "mason",
      "quickfix",
    },
  },
}
