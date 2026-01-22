return {
  "saghen/blink.cmp",
  lazy = true,
  event = "VeryLazy",
  ---@type blink.cmp.Config
  opts = {
    appearance = {
      nerd_font_variant = "mono",
    },

    cmdline = { enabled = true },

    completion = {
      menu = {
        auto_show = true,
        auto_show_delay_ms = 100,
        border = "rounded",
        winhighlight = "",
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
        window = {
          border = "rounded",
        },
      },
    },

    signature = {
      window = {
        border = "rounded",
        winhighlight = "",
      },
    },
  },
}
