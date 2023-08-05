require("andrepatta.plugins.lualine")
require("andrepatta.plugins.nvimtree")
require("andrepatta.plugins.telescope")
require("andrepatta.plugins.treesitter")
require("andrepatta.plugins.which-key")

lvim.plugins = {
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
  { "andrepatta/eclipse.vim",    branch = "dev" },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },

  { "ThePrimeagen/harpoon" },

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

  { "tpope/vim-surround" },
  { "tpope/vim-repeat" },

  {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require('hop').setup()
    end
  },

  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },

  {
    "norcalli/nvim-colorizer.lua",
    -- cmd = "ColorizerToggle",
    config = function()
      require("colorizer").setup()
    end,
  },
};

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
end
