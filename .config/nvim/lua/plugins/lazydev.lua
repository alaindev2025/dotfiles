return {
  "folke/lazydev.nvim",
  ft = "lua", -- Se carga instantáneo al abrir un .lua
  ---@type lazydev.Config
  opts = {
    integrations = {
      lspconfig = true,
      cmp = true,
    },
  },
}
