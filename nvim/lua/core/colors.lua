local M = {}

M.base_30 = {
	white = "#abb2bf",
	darker_black = "#2a303c",
	black = "#2E3440", --  nvim bg
	black2 = "#343a46",
	one_bg = "#373d49",
	one_bg2 = "#464c58",
	one_bg3 = "#494f5b",
	grey = "#4b515d",
	grey_fg = "#565c68",
	grey_fg2 = "#606672",
	light_grey = "#646a76",
	red = "#BF616A",
	baby_pink = "#de878f",
	pink = "#d57780",
	line = "#414753", -- for lines like vertsplit
	green = "#A3BE8C",
	vibrant_green = "#afca98",
	blue = "#7797b7",
	nord_blue = "#81A1C1",
	yellow = "#EBCB8B",
	sun = "#e1c181",
	purple = "#B48EAD",
	dark_purple = "#a983a2",
	teal = "#6484a4",
	orange = "#e39a83",
	cyan = "#9aafe6",
	statusline_bg = "#333945",
	lightbg = "#3f4551",
	pmenu_bg = "#A3BE8C",
	folder_bg = "#7797b7",
}

M.base_16 = {
	base00 = "#2E3440",
	base01 = "#3B4252",
	base02 = "#434C5E",
	base03 = "#4C566A",
	base04 = "#D8DEE9",
	base05 = "#E5E9F0",
	base06 = "#ECEFF4",
	base07 = "#8FBCBB",
	base08 = "#88C0D0",
	base09 = "#81A1C1",
	base0A = "#88C0D0",
	base0B = "#A3BE8C",
	base0C = "#81A1C1",
	base0D = "#81A1C1",
	base0E = "#81A1C1",
	base0F = "#B48EAD",
}

M.polish_hl = {
	["@punctuation.bracket"] = { fg = M.base_30.white },
	["@punctuation.delimiter"] = { fg = M.base_30.white },
}

local base16 = function()
	local theme = M.base_16

	return {
		-- `@annotation` is not one of the default capture group, should we keep it
		["@annotation"] = {
			fg = theme.base0F,
		},

		["@attribute"] = {
			fg = theme.base0A,
		},

		["@character"] = {
			fg = theme.base08,
		},

		["@constructor"] = {
			fg = theme.base0C,
		},

		["@constant"] = {
			fg = theme.base08,
		},

		["@constant.builtin"] = {
			fg = theme.base09,
		},

		["@constant.macro"] = {
			fg = theme.base08,
		},

		["@error"] = {
			fg = theme.base08,
		},

		["@exception"] = {
			fg = theme.base08,
		},

		["@float"] = {
			fg = theme.base09,
		},

		["@keyword"] = {
			fg = theme.base0E,
		},

		["@keyword.function"] = {
			fg = theme.base0E,
		},

		["@keyword.return"] = {
			fg = theme.base0E,
		},

		["@function"] = {
			fg = theme.base0D,
		},

		["@function.builtin"] = {
			fg = theme.base0D,
		},

		["@function.macro"] = {
			fg = theme.base08,
		},

		["@function.call"] = {
			fg = theme.base0D,
		},

		["@operator"] = {
			fg = theme.base05,
		},

		["@keyword.operator"] = {
			fg = theme.base0E,
		},

		["@method"] = {
			fg = theme.base0D,
		},

		["@method.call"] = {
			fg = theme.base0D,
		},

		["@namespace"] = {
			fg = theme.base08,
		},

		["@none"] = {
			fg = theme.base05,
		},

		["@parameter"] = {
			fg = theme.base08,
		},

		["@reference"] = {
			fg = theme.base05,
		},

		["@punctuation.bracket"] = {
			fg = theme.base0F,
		},

		["@punctuation.delimiter"] = {
			fg = theme.base0F,
		},

		["@punctuation.special"] = {
			fg = theme.base08,
		},

		["@string"] = {
			fg = theme.base0B,
		},

		["@string.regex"] = {
			fg = theme.base0C,
		},

		["@string.escape"] = {
			fg = theme.base0C,
		},

		["@string.special"] = {
			fg = theme.base0C,
		},

		["@symbol"] = {
			fg = theme.base0B,
		},

		["@tag"] = {
			link = "Tag",
		},

		["@tag.attribute"] = {
			link = "@property",
		},

		["@tag.delimiter"] = {
			fg = theme.base0F,
		},

		["@text"] = {
			fg = theme.base05,
		},

		["@text.strong"] = {
			bold = true,
		},

		["@text.emphasis"] = {
			fg = theme.base09,
		},

		["@text.strike"] = {
			fg = theme.base0F,
			strikethrough = true,
		},

		["@text.literal"] = {
			fg = theme.base09,
		},

		["@text.uri"] = {
			fg = theme.base09,
			underline = true,
		},

		["@type.builtin"] = {
			fg = theme.base0A,
		},

		["@variable"] = {
			fg = theme.base05,
		},

		["@variable.builtin"] = {
			fg = theme.base09,
		},

		-- variable.global

		["@definition"] = {
			sp = theme.base04,
			underline = true,
		},

		-- TSDefinitionUsage = {
		--   sp = theme.base04,
		--   underline = true,
		-- },

		["@scope"] = {
			bold = true,
		},

		["@field"] = {
			fg = theme.base08,
		},

		["@field.key"] = {
			fg = theme.base08,
		},

		["@property"] = {
			fg = theme.base08,
		},

		["@include"] = {
			link = "Include",
		},

		["@conditional"] = {
			link = "Conditional",
		},

		Boolean = {
			fg = theme.base09,
		},

		Character = {
			fg = theme.base08,
		},

		Conditional = {
			fg = theme.base0E,
		},

		Constant = {
			fg = theme.base08,
		},

		Define = {
			fg = theme.base0E,
			sp = "none",
		},

		Delimiter = {
			fg = theme.base0F,
		},

		Float = {
			fg = theme.base09,
		},

		Variable = {
			fg = theme.base05,
		},

		Function = {
			fg = theme.base0D,
		},

		Identifier = {
			fg = theme.base08,
			sp = "none",
		},

		Include = {
			fg = theme.base0D,
		},

		Keyword = {
			fg = theme.base0E,
		},

		Label = {
			fg = theme.base0A,
		},

		Number = {
			fg = theme.base09,
		},

		Operator = {
			fg = theme.base05,
			sp = "none",
		},

		PreProc = {
			fg = theme.base0A,
		},

		Repeat = {
			fg = theme.base0A,
		},

		Special = {
			fg = theme.base0C,
		},

		SpecialChar = {
			fg = theme.base0F,
		},

		Statement = {
			fg = theme.base08,
		},

		StorageClass = {
			fg = theme.base0A,
		},

		String = {
			fg = theme.base0B,
		},

		Structure = {
			fg = theme.base0E,
		},

		Tag = {
			fg = theme.base0A,
		},

		Todo = {
			fg = theme.base0A,
			bg = theme.base01,
		},

		Type = {
			fg = theme.base0A,
			sp = "none",
		},

		Typedef = {
			fg = theme.base0A,
		},
		["@lsp.type.class"] = { link = "Structure" },
		["@lsp.type.decorator"] = { link = "Function" },
		["@lsp.type.enum"] = { link = "Type" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { link = "Structure" },
		["@lsp.type.macro"] = { link = "@macro" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.struct"] = { link = "Structure" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParamater"] = { link = "TypeDef" },
		["@lsp.type.variable"] = { link = "@variable" },

		["@event"] = { fg = theme.base08 },
		["@modifier"] = { fg = theme.base08 },
		["@regexp"] = { fg = theme.base0F },
	}
end

M.init = function()
	local colors = require("core.colors").base_30
	local opts = {

		TelescopePreviewTitle = {
			fg = colors.black,
			bg = colors.green,
		},

		TelescopePromptTitle = {
			fg = colors.black,
			bg = colors.red,
		},

		TelescopeSelection = { bg = colors.black2, fg = colors.white },
		TelescopeResultsDiffAdd = { fg = colors.green },
		TelescopeResultsDiffChange = { fg = colors.yellow },
		TelescopeResultsDiffDelete = { fg = colors.red },
		--  ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
		WhichKey = { fg = colors.blue, bg = "NONE" },
		WhichKeySeparator = { fg = colors.light_grey },
		WhichKeyDesc = { fg = colors.nord_blue },
		WhichKeyGroup = { fg = colors.green },
		WhichKeyValue = { fg = colors.green },
		--  ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
		NormalFloat = { bg = "NONE" },
		Normal = { bg = "NONE" },
		Folded = { bg = "NONE" },
		NvimTreeNormal = { bg = "NONE" },
		NvimTreeNormalNC = { bg = "NONE" },
		NvimTreeCursorLine = { bg = "NONE" },
		TelescopeNormal = { bg = "NONE" },
		TelescopePrompt = { bg = "NONE" },
		TelescopeResults = { bg = "NONE" },
		TelescopePromptNormal = { bg = "NONE" },
		TelescopePromptPrefix = { bg = "NONE" },
		CursorLine = { bg = "NONE" },
		Pmenu = { bg = "NONE" },
		CmpPmenu = { bg = "NONE" },

		TelescopeBorder = {
			fg = colors.grey,
			bg = "NONE",
		},

		TelescopePromptBorder = {
			fg = colors.grey,
			bg = "NONE",
		},

		CmpDocBorder = {
			bg = "none",
			fg = colors.grey,
		},

		NvimTreeWinSeparator = {
			fg = colors.one_bg2,
			bg = "NONE",
		},

		TelescopeResultsTitle = {
			fg = colors.black,
			bg = colors.blue,
		},
		--  ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
		AlphaHeader = { fg = colors.grey_fg },
		AlphaButtons = { fg = colors.light_grey },
		--  ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
		NotifyERRORBorder = { fg = colors.red },
		NotifyERRORIcon = { fg = colors.red },
		NotifyERRORTitle = { fg = colors.red },
		NotifyWARNBorder = { fg = colors.orange },
		NotifyWARNIcon = { fg = colors.orange },
		NotifyWARNTitle = { fg = colors.orange },
		NotifyINFOBorder = { fg = colors.green },
		NotifyINFOIcon = { fg = colors.green },
		NotifyINFOTitle = { fg = colors.green },
		NotifyDEBUGBorder = { fg = colors.grey },
		NotifyDEBUGIcon = { fg = colors.grey },
		NotifyDEBUGTitle = { fg = colors.grey },
		NotifyTRACEBorder = { fg = colors.purple },
		NotifyTRACEIcon = { fg = colors.purple },
		NotifyTRACETitle = { fg = colors.purple },
		--  ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
		Comment = { fg = colors.grey_fg },
		Visual = {
			bg = colors.teal,
		},
		Specs = {
			fg = colors.purple,
		},
		FloatBorder = {
			bg = "NONE",
		},
		FloatShadow = {
			bg = "NONE",
		},
		SagaWinbarFileIcon = {
			bg = "NONE",
		},
		WinSeperator = {
			bg = "NONE",
		},
	}

	for hl, col in pairs(opts) do
		vim.api.nvim_set_hl(0, hl, col)
	end

	for hl, col in pairs(base16()) do
		vim.api.nvim_set_hl(0, hl, col)
	end
end

return M
