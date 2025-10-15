local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

return {
    'nvim-lualine/lualine.nvim',
    config = function ()
        require('lualine').setup {
            options = {
                theme = {
                    normal = {
                        a = { fg = colors.black, bg = colors.violet },
                        b = { fg = colors.white, bg = colors.grey },
                        c = { fg = colors.white }
                    },
                    insert = { a = { fg = colors.black, bg = colors.blue } },
                    visual = { a = { fg = colors.black, bg = colors.cyan } },
                    replace = { a = { fg = colors.black, bg = colors.red } },
                    inactive = {
                        a = { fg = colors.white, bg = colors.black },
                        b = { fg = colors.white, bg = colors.black },
                        c = { fg = colors.white }
                    }
                },
                component_separators = '|',
                section_separators = { left = '', right = '' }
            },
            sections = {
                lualine_a = { { 'mode', color = { gui = 'bold' }, separator = { left = '' }, right_padding = 2 } },
                lualine_b = { 'diagnostics', 'diff', 'branch', 'filename'},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'filetype', 'fileformat' },
                lualine_z = { { 'location', color = { gui = 'bold' }, separator = { right = '' }, left_padding = 2 } }
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' }
            },
            tabline = {},
            extensions = {}
        }
    end
}
