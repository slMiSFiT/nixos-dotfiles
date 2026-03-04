return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		keys = {
			{ "<leader>ee", ":Neotree filesystem toggle left<cr>", desc = "file explorer" },
			{ "<leader>eg", ":Neotree float git_status<cr>", desc = "git status explorer" },
			{ "<leader>eb", ":Neotree float buffers<cr>", desc = "buffers explorer" },
		},
	},
}
