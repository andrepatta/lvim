local kind = require('andrepatta.core.kind')

local wk = lvim.builtin.which_key

wk.mappings["S"] = {
  name = "Persistence",
  s = { "<cmd>lua require('persistence').load()<cr>", kind.icons.clock .. "Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", kind.icons.clock .. "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", kind.icons.exit .. "Quit without saving session" },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", "Toggle format-on-save" }
-- wk.mappings["l"]["R"] = { ":LspRestart<cr>", "Restart" }

wk.mappings["s"]["w"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  ' ' .. kind.cmp_kind.EnumMember .. "Search Word Under Cursor"
}

wk.mappings["W"] = {
  name = "Window Ctrl",
  s = { '<C-w>s', 'Split horizontally' },
  e = { '<C-w>v', 'Split vertically' },
  h = { '<C-w>|', 'Maximize window horizontally (|)' },
  v = { '<C-w>_', 'Maximize window vertically (_)' },
  ['='] = { '<C-w>=', 'Resize windows equally' },
}

wk.mappings['x'] = { ":xa<cr>", "Save All and Quit", }
wk.mappings['X'] = { ":wa<cr>", "Save All" }

wk.mappings['u'] = { "Undotree" }

wk.mappings['s']['o'] = { ":SymbolsOutline <CR>", "Toggle Symbols Outline" }
