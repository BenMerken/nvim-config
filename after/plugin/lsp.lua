local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers 
lsp_zero.preset("recommended")

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'eslint',
        'gopls',
    },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts lsp_zero.nvim_lua_ls()
            require('lsconfig').lua_ls.setup(lua_opts)
        end,
    },})

    local cmp = require('cmp')
    local cmp_select = {bahavior = cmp.SelectBehavior.Select}

    cmp.setup({
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-y>'] = cmp.mapping.confirm({select = true}),
            ['<C-Space>'] = cmp.mapping.complete(),
        })
    })

