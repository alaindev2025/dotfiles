return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    ---@type CatppuccinOptions
    opts = {
      no_italic = true,
      no_bold = true,

      integrations = {
        lualine = {
          all = function(C)
            ---@type CtpIntegrationLualineOverride
            return {
              normal = {
                a = { bg = C.red },
                b = { fg = C.red },
                c = { fg = C.red },
              },
              visual = {
                a = { bg = C.teal },
                b = { fg = C.teal },
                c = { fg = C.teal },
              },
              command = { c = { fg = C.peach } },
              insert = { c = { fg = C.green } },
            }
          end,
        },
      },

      highlight_overrides = {
        all = function(C)
          return {
            -- Borders
            FloatBorder = { fg = C.surface2, bg = "none" },
            NormalFloat = { fg = C.overlay2, bg = "none" },

            -- Telescope
            TelescopePreviewTitle = { fg = C.crust, bg = C.green },
            TelescopePromptTitle = { fg = C.crust, bg = C.red },
            TelescopeResultsTitle = { fg = C.crust, bg = C.blue },
            TelescopePromptPrefix = { fg = C.red },

            -- Treesitter
            ["@punctuation.bracket"] = { fg = C.red },
            ["@punctuation.delimiter"] = { fg = C.red },

            -- Snacks
            SnacksDashboardHeader = { fg = C.red },
          }
        end,
      },

      float = {
        transparent = true,
        solid = false,
      },
    },
  },

  {
    "folke/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
