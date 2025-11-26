local colors = {
  black         = '#080808',
  white         = '#ffffff',
  grey          = '#303030',
  violet        = '#cd9ae5',
  purple        = '#584371',
  darkpurple    = '#340152',
}

return {
    'nvim-lualine/lualine.nvim',
    config = function ()
        require('lualine').setup {
            options = {
                theme = {
                    normal = {
                        a = { fg = colors.black, bg = colors.violet },
                        b = { fg = colors.white, bg = colors.purple },
                        c = { fg = colors.white }
                    },
                    insert = { a = { fg = colors.black, bg = colors.white } },
                    visual = { a = { fg = colors.white, bg = colors.darkpurple } },
                    inactive = {
                        a = { fg = colors.white, bg = colors.grey },
                        b = { fg = colors.white, bg = colors.grey },
                        c = { fg = colors.white }
                    }
                },
                component_separators = '|',
                section_separators = { left = '', right = '' }
            },
            sections = {
                lualine_a = { { 'mode', color = { gui = 'bold' }, separator = { left = '' } } },
                lualine_b = { 'diagnostics', 'diff', 'branch', 'filename'},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'filetype', 'fileformat' },
                lualine_z = { { 'location', color = { gui = 'bold' }, separator = { right = '' } } }
            },
            inactive_sections = {
                lualine_a = { { 'filename', separator = { left = '', right = '' } } },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { { 'location', separator = { left = '', right = '' } } }
            },
            tabline = {},
            extensions = {}
        }
    end
}
