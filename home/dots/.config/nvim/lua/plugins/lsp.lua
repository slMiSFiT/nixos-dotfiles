-- Your config is mostly correct! Here's the improved version:

return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"lua_ls",
			"hyprls",
			"vimls",
		},
	},
	config = function(_, opts)
		-- This is only needed if you want custom server configurations
		-- For lua_ls, configure it to recognize vim global
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		-- Setup mason-lspconfig with your opts
		require("mason-lspconfig").setup(opts)
	end,
	keys = {
		{
			"K",
			vim.lsp.buf.hover,
			desc = "LSP: Hover documentation",
		},
		{
			"gd",
			vim.lsp.buf.definition,
			desc = "LSP: Go to definition",
		},
		{
			"gD",
			vim.lsp.buf.declaration,
			desc = "LSP: Go to declaration",
		},
		{
			"gi",
			vim.lsp.buf.implementation,
			desc = "LSP: Go to implementation",
		},
		{
			"gr",
			vim.lsp.buf.references,
			desc = "LSP: Find references",
		},
		{
			"<leader>ca",
			vim.lsp.buf.code_action,
			desc = "LSP: Code action",
		},
		{
			"<leader>rn",
			vim.lsp.buf.rename,
			desc = "LSP: Rename symbol",
		},
		{
			"<leader>F",
			function()
				vim.lsp.buf.format({ async = true })
			end,
			desc = "LSP: Format document",
		},
		{
			"<C-k>",
			vim.lsp.buf.signature_help,
			mode = "i",
			desc = "LSP: Signature help",
		},
	},
}
