return {
    "williamboman/mason.nvim", -- Manage language servers from neovim
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({})

        mason_lspconfig.setup({
            ensure_installed = {
                "tsserver",
                "eslint",
                "html",
                "cssls",
                "lua_ls",
                "rust_analyzer",
                "gopls",
            },
            automatic_installation = true,
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "eslint_d", -- javascript linter
            },
        })
    end
}
