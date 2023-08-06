if lvim.colorscheme == "catppuccin" then
  lvim.builtin.bufferline.highlights = require("catppuccin.groups.integrations.bufferline").get()
end
