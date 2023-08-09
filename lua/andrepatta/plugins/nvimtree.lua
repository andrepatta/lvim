lvim.builtin.nvimtree.setup.filters = {
  dotfiles = false,
  git_clean = false,
  no_buffer = false,
  custom = { "node_modules", "\\.cache", ".DS_Store" },
  exclude = {},
}

-- remove nvim-tree default arrow icons
lvim.builtin.nvimtree.setup.renderer = {
  add_trailing = false,
  group_empty = false,
  highlight_git = true,
  full_name = false,
  highlight_opened_files = "none",
  root_folder_label = ":t",
  indent_width = 2,
  indent_markers = {
    enable = false,
    inline_arrows = true,
    icons = {
      corner = "└",
      edge = "│",
      item = "│",
      none = " ",
    },
  },
  icons = {
    webdev_colors = lvim.use_icons,
    git_placement = "before",
    modified_placement = "after",
    padding = " ",
    symlink_arrow = " ➛ ",
    show = {
      file = lvim.use_icons,
      folder = lvim.use_icons,
      folder_arrow = lvim.use_icons,
      git = lvim.use_icons,
    },
    glyphs = {
      default = lvim.icons.ui.Text,
      symlink = lvim.icons.ui.FileSymlink,
      bookmark = lvim.icons.ui.BookMark,
      folder = {
        arrow_closed = "",
        arrow_open = "",
        default = lvim.icons.ui.Folder,
        open = lvim.icons.ui.FolderOpen,
        empty = lvim.icons.ui.EmptyFolder,
        empty_open = lvim.icons.ui.EmptyFolderOpen,
        symlink = lvim.icons.ui.FolderSymlink,
        symlink_open = lvim.icons.ui.FolderOpen,
      },
      git = {
        unstaged = lvim.icons.git.FileUnstaged,
        staged = lvim.icons.git.FileStaged,
        unmerged = lvim.icons.git.FileUnmerged,
        renamed = lvim.icons.git.FileRenamed,
        untracked = lvim.icons.git.FileUntracked,
        deleted = lvim.icons.git.FileDeleted,
        ignored = lvim.icons.git.FileIgnored,
      },
    },
  },
  special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  symlink_destination = true,
}
