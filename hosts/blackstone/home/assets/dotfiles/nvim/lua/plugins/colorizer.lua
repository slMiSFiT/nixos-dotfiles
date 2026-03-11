return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = {},
	config = function()
		require("colorizer").setup({
			user_default_options = {
				css = true, -- Enable all CSS *features*:
				-- names, RGB, RGBA, RRGGBB, RRGGBBAA, AARRGGBB, rgb_fn, hsl_fn, oklch_fn
				css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn, oklch_fn
				xterm = true, -- Enable xterm 256-color codes (#xNN, \e[38;5;NNNm)
        suppress_deprecation = true;
			},
		})
		-- rgb(ffffff)
		-- rgb(ffffffff)
		-- rgb(250, 250, 250)
		-- rgba(255, 255, 255, 1)
		-- #ffffff
		-- #ffffffff
		-- gray
	end,
}
