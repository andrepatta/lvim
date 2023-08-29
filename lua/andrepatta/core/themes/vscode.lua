local M = {}

M.setup = function()
  local vscode = require("vscode")
  local c = require('vscode.colors').get_colors()
  vscode.setup({
    color_overrides = {
      vscLeftMid = '#272727',
    },
    disable_nvimtree_bg = true,
    group_overrides = {
      Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    }
  })

  vscode.load()
end

return M
