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
      default = "󰈚",
      symlink = "",
      bookmark = lvim.icons.ui.BookMark,
      folder = {
        default = "",
        empty = "",
        empty_open = "",
        open = "",
        symlink = "",
        symlink_open = "",
        arrow_open = "",
        arrow_closed = "",
      },
      -- git = {
      --   unstaged = lvim.icons.git.FileUnstaged,
      --   staged = "✓",
      --   unmerged = "",
      --   renamed = "➜",
      --   untracked = "★",
      --   deleted = "",
      --   ignored = "◌",
      -- },
      git = {
        unstaged = "",
        staged = "",
        unmerged = "",
        renamed = "",
        untracked = "",
        deleted = "",
        ignored = "",
      },
    },
  },
  special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  symlink_destination = true,
}

vim.api.nvim_create_autocmd({ "QuitPre" }, {
  callback = function() vim.cmd("NvimTreeClose") end,
})
