local custom = {}
-- custom["kevinhwang91/nvim-ufo"] = {
-- 	lazy = false,
-- 	dependencies = {
-- 		{
-- 			"kevinhwang91/promise-async",
-- 		},
-- 	},
-- }

custom["LudoPinelli/comment-box.nvim"] = {
	lazy = true,
	cmd = { "CBline4", "CBllbox12", "CBccbox", "CBacbox" },
	event = "VeryLazy",
	config = require("custom.comment-box"),
}

custom["axieax/urlview.nvim"] = {
	lazy = true,
	cmd = "UrlView",
	config = require("custom.urlview"),
}

custom["fladson/vim-kitty"] = {
	lazy = true,
	ft = "kitty",
}
custom["MattesGroeger/vim-bookmarks"] = {
	cmd = { "BookmarkToggle", "BookmarkNext", "BookmarkPrev", "BookmarkSave", "BookmarkLoad" },
	config = function()
		vim.g["bookmark_auto_save"] = 1
		vim.g["bookmark_save_per_working_dir"] = 1
	end,
}
custom["folke/todo-comments.nvim"] = {
	"folke/todo-comments.nvim",
	lazy = true,
	cmd = { "TodoTrouble", "TodoTelescope" },
	event = { "BufReadPost", "BufNewFile" },
	config = require("custom.todo-comments"),
  -- stylua: ignore
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
    { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
    { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
  },
}
custom["milesmanners/vim-stagehand"] = {
	lazy = true,
	dependencies = {
		{
			"junegunn/goyo.vim",
		},
		{
			"junegunn/limelight.vim",
		},
	},
	keys = {
		{ "s", "StagehandEnter", mode = "v" },
	},
}
custom["echasnovski/mini.nvim"] = {
	"echasnovski/mini.nvim",
	lazy = true,
	event = "VeryLazy",
	version = false,
	config = require("custom.mini"),
}
custom["tpope/vim-surround"] = {
	"tpope/vim-surround",
	lazy = true,
	event = "VeryLazy",
}
custom["knubie/vim-kitty-navigator"] = {
	ft = "kitty",
	config = require("custom.vim-kitty-navigator"),
}
return custom
