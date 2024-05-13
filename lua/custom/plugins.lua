local overrides = require "custom.configs.overrides"
local copilotChat = require "custom.configs.copilotChat"

local plugins = {
  --- default plugin overrides ---
  { "williamboman/mason.nvim",         opts = overrides.mason },
  { "nvim-treesitter/nvim-treesitter", opts = overrides.treesitter },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
    dependencies = {
      {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
          require("copilot").setup(overrides.copilot)
        end,
      },
    },
  },

  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  -- copilot chat in separate file because it is too long omg
  copilotChat,
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  --- custom plugins
  {
    'tpope/vim-fugitive',
    keys = {
      -- Open current file on github.com
      {
        '<leader>go',
        ':GBrowse<cr>',
        mode = { 'n', 'v' },
        desc = '[G]it [B]rowse file',
      },
      { '<leader>gs', ':Git<cr>', mode = { 'n', 'v' }, desc = '[G]it [S]tatus' },
    },
    cmd = { 'Git' },
    dependencies = { "tpope/vim-rhubarb" },
  }

}

return plugins
