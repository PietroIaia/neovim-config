return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require("barbar").setup({
            animation = true,
            auto_hide = false,
            tabpages = true,
            clickable = true,
        })
    end,
    init = function() vim.g.barbar_auto_setup = false end,
}
