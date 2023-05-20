require("keymap.helpers")
local bind = require("keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback
local plug_map = {
	-- Package manager: lazy.nvim
	["n|<leader>ph"] = map_cr("Lazy"):with_silent():with_noremap():with_nowait():with_desc("package: Show"),
	["n|<leader>ps"] = map_cr("Lazy sync"):with_silent():with_noremap():with_nowait():with_desc("package: Sync"),
	["n|<leader>pu"] = map_cr("Lazy update"):with_silent():with_noremap():with_nowait():with_desc("package: Update"),
	["n|<leader>pi"] = map_cr("Lazy install"):with_silent():with_noremap():with_nowait():with_desc("package: Install"),
	["n|<leader>pl"] = map_cr("Lazy log"):with_silent():with_noremap():with_nowait():with_desc("package: Log"),
	["n|<leader>pc"] = map_cr("Lazy check"):with_silent():with_noremap():with_nowait():with_desc("package: Check"),
	["n|<leader>pd"] = map_cr("Lazy debug"):with_silent():with_noremap():with_nowait():with_desc("package: Debug"),
	["n|<leader>pp"] = map_cr("Lazy profile"):with_silent():with_noremap():with_nowait():with_desc("package: Profile"),
	["n|<leader>pr"] = map_cr("Lazy restore"):with_silent():with_noremap():with_nowait():with_desc("package: Restore"),
	["n|<leader>px"] = map_cr("Lazy clean"):with_silent():with_noremap():with_nowait():with_desc("package: Clean"),
	--         ╭──────────────────────────────────────────────────────────╮
	--         │                       Comment-Box                        │
	--         ╰──────────────────────────────────────────────────────────╯
	["n|<leader>bl"] = map_cr("CBline4"):with_noremap():with_silent():with_desc("Comment: Horizontal Seperator"),
	["nv|<leader>bq"] = map_cr("CBllbox12"):with_noremap():with_silent():with_desc("Comment-Box: Quote"),
	["nv|<leader>bb"] = map_cr("CBccbox")
		:with_noremap()
		:with_silent()
		:with_desc("Comment-Box: Centre Aligned - Centre Text"),
	["nv|<leader>bt"] = map_cr("CBlcbox")
		:with_noremap()
		:with_silent()
		:with_desc("Comment-Box: Left Aligned - Centre Text"),

	["nv|<leader>ba"] = map_cr("CBacbox"):with_noremap():with_silent():with_desc("Comment-Box: Adapted Box"),

	--  ┌────────────────────────────────────────────────╮
	--  │                    Urlview                     │
	--  └────────────────────────────────────────────────╯
	["nv|<leader>fl"] = map_cr("UrlView"):with_noremap():with_silent():with_desc("Urlview: View all links in buffer"),
	["nv|<leader>fL"] = map_cr("UrlView lazy"):with_noremap():with_silent():with_desc("Urlview: View lazy link list"),
	--         ┌────────────────────────────────────────────────╮
	--         │                   bookmarks                    │
	--         └────────────────────────────────────────────────╯
	["nv|mm"] = map_cr("BookmarkToggle"):with_noremap():with_silent():with_desc("Bookmark: Toggle bookmark"),
	["nv|ml"] = map_cr("lua require('telescope').extensions.vim_bookmarks.current_file()")
		:with_noremap()
		:with_silent()
		:with_desc("Bookmark: List"),
	["nv|mn"] = map_cr("BookmarkNext"):with_noremap():with_silent():with_desc("Bookmark: Next"),
	["nv|mp"] = map_cr("BookmarkPrev"):with_noremap():with_silent():with_desc("Bookmark: Previous"),
}

bind.nvim_load_mapping(plug_map)

-- Plugin keymaps
require("keymap.completion")
require("keymap.editor")
require("keymap.lang")
require("keymap.tool")
require("keymap.ui")
