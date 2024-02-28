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

return M
