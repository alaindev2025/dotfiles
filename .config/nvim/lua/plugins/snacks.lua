return {
  "folke/snacks.nvim",
  opts = {
    -- Esto le dice a Snacks que no configure la terminal
    terminal = { enabled = false },
  },
  keys = {
    -- Aquí es donde matamos los atajos de LazyVim
    { "<leader>/", false }, -- Mata la terminal flotante
    { "<c-/>", false }, -- Mata la terminal si usas Ctrl + /
    { "<leader>ft", false }, -- Mata el otro atajo común
    { "<leader>fT", false }, -- Mata el otro atajo común
  },
}
