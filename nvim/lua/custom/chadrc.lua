---@type ChadrcConfig
local M = {}

M.ui = { theme = 'github_dark' }
M.mappings = require("custom.mappings")
require("custom.startup").startup()

return M