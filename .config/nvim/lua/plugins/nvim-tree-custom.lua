return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    bind_to_cwd = true,
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
    group_empty_dirs = true,
    follow_current_file = {
      enabled = true,
      update_cwd = true,
    },
  },
}

