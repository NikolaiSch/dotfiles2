return function()
	require("mini.ai").setup({
		n_lines = 500,
		custom_textobjects = {
			o = require("mini.ai").gen_spec.treesitter({
				a = { "@block.outer", "@conditional.outer", "@loop.outer" },
				i = { "@block.inner", "@conditional.inner", "@loop.inner" },
			}, {}),
			f = require("mini.ai").gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
			c = require("mini.ai").gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
		},
	})
	require("mini.animate").setup()
	require("mini.doc").setup()
	require("mini.colors").setup()
	require("mini.splitjoin").setup()
	require("mini.indentscope").setup()
	require("mini.misc").setup({
		make_global = { "zoom" },
	})
end
