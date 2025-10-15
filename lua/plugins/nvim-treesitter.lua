return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	opts = {
		indent = { enable = true },
		highlight = { enable = true},
		folds = { enable = true},
		sync_install = false,
		auto_install = true,
		ensure_installed = {
			"c",
			"bash",
			"html",
			"javascript",
			"json",
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
	}
}
