return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    -- 1. Ventanas con bordes redondeados y estilo moderno
    opts.window = {
      completion = cmp.config.window.bordered({ border = "rounded" }),
      documentation = cmp.config.window.bordered({ border = "rounded" }),
    }
  end,
}
