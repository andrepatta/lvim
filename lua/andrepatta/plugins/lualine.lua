local getTheme = function()
  if lvim.colorscheme == "catppuccin" then
    return lvim.colorscheme
  else
    local lualine_nightfly = require("lualine.themes.gruvbox-material")

    -- new colors for theme
    local new_colors = {
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      black = "#000000",
    }

    -- change nightlfy theme colors
    lualine_nightfly.normal.a.bg = new_colors.blue
    lualine_nightfly.insert.a.bg = new_colors.green
    lualine_nightfly.visual.a.bg = new_colors.violet
    lualine_nightfly.command = {
      a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black, -- black
      },
    }
    return lualine_nightfly
  end
end

lvim.builtin.lualine.options = {
  ions_enabled = true,
  theme = getTheme(),
  -- component_separators = { left = '', right = '' },
  -- section_separators = { left = '', right = '' },
  disabled_filetypes = { statusline = { "alpha" } },
  ignore_focus = {},
  always_divide_middle = true,
  globalstatus = true,
  refresh = {
    statusline = 1000,
    tabline = 1000,
    winbar = 1000,
  }
}

lvim.builtin.lualine.sections = {
  -- lualine_a = { 'mode' },
  -- lualine_b = { 'branch', 'diff', 'diagnostics' },
  -- lualine_c = {},
  -- lualine_x = { 'filetype' },
  -- lualine_y = { 'progress' },
  -- lualine_z = { 'location' }

  lualine_a = { "mode" },
  lualine_b = { "branch" },
  lualine_c = { "filename", "diff" },
  lualine_x = { "diagnostics", "filetype" },
  lualine_y = { "progress" },
  lualine_z = { "location" },
}


lvim.builtin.lualine.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { "filename" },
  lualine_x = { "location" },
  lualine_y = {},
  lualine_z = {},
}
