return {
    "hrsh7th/nvim-cmp", -- Completion plugin for neovim
    event = "InsertEnter",
    dependencies = {
        "L3MON4D3/LuaSnip", -- Snippet engine for neovim
    },
    config = function()
        local cmp = require("cmp")
        local cmp_select = {bahavior = cmp.SelectBehavior.Select}
        local luasnip = require("luasnip")

        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            snippet = { -- Configure how nvim-cmp interacts with the snippet engine
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select), -- Previous suggestion
            ["<C-j>"] = cmp.mapping.select_next_item(cmp_select), -- Next suggestion
            ["<CR>"] = cmp.mapping.confirm({select = true}), -- Confirm suggestion
            ["<C-Space>"] = cmp.mapping.complete(), --Show suggestions
        }),
        -- Sources for autocompletion
        sources = cmp.config.sources({
            { name = "nvim_lsp" }, -- language servers
            { name = "luasnip" }, -- snippets
        }),
    })
end
}
