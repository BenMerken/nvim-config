return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function ()
        local nvimtree = require("nvim-tree")

        vim.g.loaded = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            renderer = {
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = ">",
                            arrow_open = "v",
                        },
                    },
                },
            },
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
        })
    end
}
