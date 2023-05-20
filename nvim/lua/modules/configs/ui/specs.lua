return function()
	require("specs").setup({
		show_jumps = true,
		min_jump = 10,
		popup = {
			delay_ms = 0, -- delay before popup displays
			inc_ms = 10, -- time increments used for fade/resize effects
			blend = 70, -- starting blend, between 0-100 (fully transparent), see :h winblend
			width = 25,
			winhl = "Specs",
			fader = require("specs").sinus_fader,
			resizer = require("specs").shrink_slide,
		},
		ignore_filetypes = {},
		ignore_buftypes = { nofile = true },
	})
end
