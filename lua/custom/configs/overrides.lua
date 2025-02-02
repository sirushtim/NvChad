local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "hcl",
    "terraform",
    "python",
    "rust",
    "go",
    "json",
    "markdown",
    "bash",
    "lua",
    "yaml",
  },
}


-- Use custom MasonInstallAll when this is updated!
M.mason = {
  ensure_installed = {
    -- terraform
    "tflint",
    "terraform-ls",

    -- python
    "ruff-lsp",

    -- rust
    "rust-analyzer",

    -- go
    "gopls"
  },
}


-- https://github-wiki-see.page/m/hrsh7th/nvim-cmp/wiki/List-of-sources
M.cmp = {
  sources = {
    { name = "nvim_lsp", trigger_characters = { "-" } },
    { name = "path" },
    { name = "buffer" },
    { name = "copilot" },
    { name = "nvim_lua" },
  },
  experimental = {
    ghost_text = true,
  },
}

M.copilot = {
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<C-x>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 18.x
  server_opts_overrides = {},
}

return M
