return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"lua",
				"bash",
				"zsh",
				"vim",
				"json",
				"css",
				"gitignore",
				-- needed for render-markdown plugin
				"markdown",
				"markdown_inline",
				"html",
				"latex",
				"yaml",
			},
			highlight = { enable = true, use_languagetree = true },
			indent = { enable = true },
			autotag = { enable = true },
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			refactor = {
				highlight_definitions = {
					enable = true,
				},
				highlight_current_scope = {
					enable = false,
				},
			},
		})
	end,
}
