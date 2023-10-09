local M = {}
M.version = "V0.1"

--- 用户设置
--- @type UserConfig
M.config = require("elysia.config")
--- @param user_config UserConfig
function M.setup(user_config)
    require("elysia.utils.global")
    require("elysia.basic")
    --- user config override
    M.config = vim .tbl_deep_extend("force",M.config,user_config)
    require("elysia.env").init(M.config)
    require("elysia.keybindings")
    local pluginManager = require("elysia.lazy")
    if not pluginManager.avaliable() then
        pluginManager.install()
    end
    pluginManager.setup()
    require("elysia.autocmds")
    require("elysia.lsp")
    require("elysia.cmp")
    require("elysia.format")
    require("elysia.dap")
    require("elysia.colorscheme")
    require("elysia.utils.color-preview")
    if M.config.fix_windows_clipboard then
      require("utils.fix-yank")
    end
  end
  
  return M