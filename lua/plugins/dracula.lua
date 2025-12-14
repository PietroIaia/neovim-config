return {
    "Mofiqul/dracula.nvim",
    config = function()
        require("dracula").setup({
            colors = {
                bright_magenta = "#F6C1FF"
            },
            overrides = function (colors)
                return {
                    ["@function"] = { fg = colors.pink },
                    ["@function.builtin"] = { link = "@function" },
                    ["@function.call"] = { link = "@function" },
                    ["@function.method"] = { link = "@function" },
                    ["@function.method.call"] = { link = "@function" },
                    ["@function.macro"] = { link = "@function" },

                    ["@type"] = { fg = colors.bright_magenta },
                    ["@constructor"] = { link = "@type" },

                    ["@keyword"] = { fg = colors.purple },
                    ["@module"] = { fg = colors.bright_white },
                    ["@variable.member"] = { fg = colors.bright_white },
                    ["@variable.parameter"] = { fg = colors.bright_blue },
                    ["@string"] = { fg = colors.cyan },
                }
            end,
        })
    end,
}
