-- require'nvim-tree'
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

    on_attach = function(buf)
      local api = require("nvim-tree.api")
      local map = vim.keymap.set

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = buf, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(buf)

      -- custom mappings
      map("n", "H", api.tree.change_root_to_parent, opts("Change root to parent"))
      map("n", "l", api.node.open.edit, opts("Open root or open file"))
      map("n", "L", api.tree.change_root_to_node, opts("Change root to node"))
    end,
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer (nvim-tree)" },
    { "<leader>E", "<cmd>NvimTreeToggle<cr>", desc = "Explorer (nvim-tree)" },
  },
}
