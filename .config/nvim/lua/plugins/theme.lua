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
      integrations = {
        noice = true,
        telescope = true,
        cmp = true,
        which_key = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
