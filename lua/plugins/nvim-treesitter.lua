return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			modules = {},
			ignore_install = {},
			indent = { enable = true },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			folds = { enable = true},
			sync_install = false,
			auto_install = true,
			ensure_installed = {
				"c",
				"bash",
				"html",
				"javascript",
				"json",
				"c_sharp",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"rust",
				"yaml",
				"vim",
				"vimdoc",

			}
		})
	end
}
