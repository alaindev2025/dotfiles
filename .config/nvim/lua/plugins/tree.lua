return {
  "nvim-tree/nvim-tree.lua",
  lazy = true,
  event = "VeryLazy",
  ---@type nvim_tree.config
  opts = {
    filters = { dotfiles = false },
    disable_netrw = true,
    hijack_cursor = true,
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = { enable = false },
    },

    view = {
      preserve_window_proportions = true,
      centralize_selection = true,
      signcolumn = "yes",
    },

    ui = { confirm = { default_yes = true } },

    renderer = {
      root_folder_label = false,
      highlight_git = "icon",
      indent_markers = { enable = true },
      icons = {
        glyphs = {
          default = "󰈚",
          folder = {
            default = "",
            empty = "",
            empty_open = "",
            open = "",
            symlink = "",
          },
          git = { unmerged = "" },
        },
      },
    },
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer (nvim-tree)" },
    { "<leader>E", "<cmd>NvimTreeToggle<cr>", desc = "Explorer (nvim-tree)" },
  },
}
