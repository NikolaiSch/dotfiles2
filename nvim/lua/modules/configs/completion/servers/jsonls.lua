-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/jsonls.lua
return {
	flags = { debounce_text_changes = 500 },
	settings = {
		json = {
			-- Schemas https://www.schemastore.org
			schemas = {
				schemas = require("schemastore").json.schemas(),
				validate = { enable = true },
			},
		},
	},
}
