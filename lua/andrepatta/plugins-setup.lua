require("andrepatta.plugins.lualine")
require("andrepatta.plugins.nvimtree")
require("andrepatta.plugins.telescope")
require("andrepatta.plugins.treesitter")
require("andrepatta.plugins.which-key")
require("andrepatta.plugins.bufferline")
require("andrepatta.plugins.cmp")

lvim.plugins = {
  -- themes
  { "lunarvim/lunar.nvim" },
  { "morhetz/gruvbox" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/sonokai" },
  { "sainnhe/edge" },
  { "lunarvim/horizon.nvim" },
  { "tomasr/molokai" },
  { "ayu-theme/ayu-vim" },
  { "folke/tokyonight.nvim" },
  { "bluz71/vim-nightfly-colors" },
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require("andrepatta.core.themes.vscode").setup()
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("andrepatta.core.themes.catppuccin").setup()
    end,
  },

  -- general
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },
  { "tpope/vim-surround" },
  { "tpope/vim-repeat" },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "mbbill/undotree",
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },

  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },

  {

    "simrat39/symbols-outline.nvim",
    config = function()
      require("andrepatta.plugins.symbols-outline").setup()
    end,
  },
};

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
end
