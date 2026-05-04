return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ensure_installed = {
			"c",
			"bash",
			"css",
			"scss",
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

		require("nvim-treesitter").setup()
		require("nvim-treesitter").install(ensure_installed)

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local bufnr = args.buf
				local ft = vim.bo[bufnr].filetype
				local lang = vim.treesitter.language.get_lang(ft)
				if not lang then
					return
				end
				if #vim.api.nvim_get_runtime_file(("queries/%s/highlights.scm"):format(lang), false) == 0 then
					return
				end
				if not pcall(vim.treesitter.start, bufnr, lang) then
					return
				end
				vim.bo[bufnr].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
