return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    ---@type CatppuccinOptions
    opts = {
      float = {
        transparent = true,
        solid = false,
      },
      no_italic = true,
      no_bold = true,
    },
    {
      "rebelot/kanagawa.nvim",
      priority = 1000,
      ---@type KanagawaConfig
      opts = {
        compile = true,
        transparent = true,
        keywordStyle = { italic = false },
        commentStyle = { italic = false },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "kanagawa",
    },
  },
}
