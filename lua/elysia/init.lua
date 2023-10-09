local M = {}
M.version = "V0.1"

--- 用户设置
M.config = require("elysia.config")

function M.setup(user_config)
    require("elysia.utils.global")
    require("elysia.basic")
    --- user config override
    M.config = vim .tbl_deep_extend("force",M.config,user_config)
    require("elysia.env").init(M.config)
    require("elysia.keybingings")
    local pluginManager = require("elysia.lazy")
    if not pluginManager.avaliable() then
        pluginManager.install()
    end
    pluginManager.setup()
    require("elysia.autocmds")
    require("insis.autocmds")
    require("insis.lsp")
    require("insis.cmp")
    require("insis.format")
    require("insis.dap")
    require("insis.colorscheme")
    require("insis.utils.color-preview")
    if M.config.fix_windows_clipboard then
      require("utils.fix-yank")
    end
  end
  
  return M