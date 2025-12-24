return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require("nvim-tree").setup({
            filters = {
                dotfiles = false,
            },
            git = {
                ignore = false,
            },
            update_focused_file = {
                enable = true,
                update_root = false,
            },
        })
    end,
}
