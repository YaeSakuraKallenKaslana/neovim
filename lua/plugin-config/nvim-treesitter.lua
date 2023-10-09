local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("没有找到 nvim-treesitter")
end

treesitter.setup({
    -- 安装language parser
    -- :TSinstallInfo 命令查看支持的语言
    ensure_install = {"json", "html", "css", "vim", "lua", "javascript", "typescript", "tsx"},
    -- 启用代码高亮模块
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    -- 启用代码缩进模块
    indent = {
        enable = true,
    }
    
})

-- 开启Folding模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- 默认不要折叠
vim.opt.foldlevel = 99
