local colorscheme = require("elysia").config.colorscheme
---@diagnostic disable-next-line: param-type-mismatch
local status_ok, _ = pcall(vim.cmd, "colorscheme " ..colorscheme)
if not status_ok then
     vim.notify("colorscheme:" ..colorscheme .. "没有找到!")
    return
end

