return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		keys = {
			{
				"n",
				"[t",
				function()
					require("todo-comments").jump_next()
				end,
				desc = "Next todo comment",
			},
			{
				"n",
				"[t",
				function()
					require("todo-comments").jump_prev()
				end,
				desc = "Previous todo comment",
			},
		},
	},
}
-- TODO: this is a todo comment
-- FIXME: this is a todo comment
-- BUG: this is a todo comment
-- FIX: this is a todo comment
-- HACK: this is a todo comment
-- FIXIT: this is a todo comment
-- ISSUE: this is an issue comment
-- WARN: this is an issue comment
-- PERF: this is an issue comment
-- PERFORMANCE: this is an issue comment
