require("vstask").setup({
	cache_json_conf = true, -- don't read the json conf every time a task is ran
	cache_strategy = "last", -- can be "most" or "last" (most used / last used)
	telescope_keys = { -- change the telescope bindings used to launch tasks
		vertical = "<C-v>",
		split = "<C-p>",
		tab = "<C-t>",
		current = "<CR>",
	},
	autodetect = { -- auto load scripts
		npm = "on",
	},
	terminal = "toggleterm",
	term_opts = {
		vertical = {
			direction = "vertical",
			size = "80",
		},
		horizontal = {
			direction = "horizontal",
			size = "10",
		},
		current = {
			direction = "float",
		},
		tab = {
			direction = "tab",
		},
	},
})
