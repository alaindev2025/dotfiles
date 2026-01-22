return {
  "folke/lazydev.nvim",
  ft = "lua", -- Se carga instantáneo al abrir un .lua
  opts = {
    integrations = {
      lspconfig = true,
      cmp = true,
    },
  },
}
