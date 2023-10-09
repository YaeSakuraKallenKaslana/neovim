require("elysia").setup({
    frontend = {
        enable = true,
        -- 下边的都是默认值可以省略
        linter = "eslint_d",
        ---@type "eslint_d" | "prettier" | "tsserver"
        formatter = "tsserver",
        format_on_save = false,
        cspell = false,
        tailwindcss = true,
        prisma = false,
        -- vue will take over typescript lsp
        vue = false,
        -- extra lsp command provided by typescript.nvim
        typescript = {
          keys = {
            ts_organize = "gs",
            ts_rename_file = "gR",
            ts_add_missing_import = "ga",
            ts_remove_unused = "gu",
            ts_fix_all = "gf",
            ts_goto_source = "gD",
          },
        },
      },

})

