---@type ChadrcConfig
local M = {}

M.ui = { theme = 'onedark' }

-- Enable remote plugins and python3 provider for copilot chat
for _, plugin in pairs({"python3_provider"}) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end

local disabled_plugins = require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins
M.lazy_nvim = {
  performance = {
    rtp = {
      disabled_plugins = vim.tbl_filter(function(x)
        return x ~= "rplugin"
      end, disabled_plugins),
    },
  },
}

M.plugins = "custom.plugins"

return M
