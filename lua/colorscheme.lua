local api = vim.api

-- Default options:
require("gruvbox").setup({
  terminal_colors = false, -- add neovim terminal colors
  undercurl = true,
  underline = false,
  bold = false,
  italic = {
    strings = false,
    emphasis = true,
    comments = false,
    operators = false,
    folds = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

function jblow_theme()
	-- api.nvim_command("colorscheme NeoSolarized")

	local fg = "#d1b897"
	api.nvim_set_hl(0, "Normal", { bg = "#071816", fg = fg })
	api.nvim_set_hl(0, "@comment", { fg = "#44b340" })

	-- Types and macros
	api.nvim_set_hl(0, "@type", { fg = "#8cde94" })
	api.nvim_set_hl(0, "@type.builtin", { link = "@type" })
	api.nvim_set_hl(0, "@storageclass", { link = "@type" })
	api.nvim_set_hl(0, "@include", { link = "@type" })
	api.nvim_set_hl(0, "@constant.macro", { link = "@type" })
	api.nvim_set_hl(0, "@preproc", { link = "@type" })
	api.nvim_set_hl(0, "@define", { link = "@type" })
	api.nvim_set_hl(0, "@function.macro", { link = "@type" })

	-- Keywords
	api.nvim_set_hl(0, "@keyword", { fg = "#ffffff" })
	api.nvim_set_hl(0, "@conditional", { fg = "#ffffff" })
	api.nvim_set_hl(0, "@repeat", { fg = "#ffffff" })

	api.nvim_set_hl(0, "@number", { fg = "#7ad0c6" })
	api.nvim_set_hl(0, "@float", { fg = "#7ad0c6" })
	api.nvim_set_hl(0, "@constant", { fg = "#7ad0c6" })
	api.nvim_set_hl(0, "@constant.builtin", { fg = "#7ad0c6" })
	api.nvim_set_hl(0, "@boolean", { fg = "#7ad0c6" })

	-- String like
	api.nvim_set_hl(0, "@string", { fg = "#2ec09c" })
	api.nvim_set_hl(0, "@string.special", { fg = "#2ec09c" })
	api.nvim_set_hl(0, "@string.escape", { fg = "#2ec09c" })
	api.nvim_set_hl(0, "@character", { fg = "#2ec09c" })

	-- Reset
	api.nvim_set_hl(0, "@punctuation", { link = "Normal" })
	api.nvim_set_hl(0, "@label", { link = "Normal" })
	api.nvim_set_hl(0, "@punctuation.bracket", { link = "Normal" })
	api.nvim_set_hl(0, "@constructor", { link = "Normal" })
	api.nvim_set_hl(0, "@variable", { link = "Normal" })
	api.nvim_set_hl(0, "@field", { link = "Normal" })
	api.nvim_set_hl(0, "@parameter", { link = "Normal" })
	api.nvim_set_hl(0, "@property", { link = "Normal" })
	api.nvim_set_hl(0, "@constant", { link = "Normal" })
	api.nvim_set_hl(0, "@operator", { link = "Normal" })
	api.nvim_set_hl(0, "@namespace", { link = "Normal" })
	api.nvim_set_hl(0, "@function", { link = "Normal" })
	api.nvim_set_hl(0, "@function.builtin", { link = "Normal" })
	api.nvim_set_hl(0, "@method", { link = "Normal" })
	api.nvim_set_hl(0, "@type.custom", { link = "Normal" })
end

local function tsoding_theme()
	local fg = "#ffffff"
	api.nvim_set_hl(0, "Normal", { bg = "#101013", fg = fg })
	api.nvim_set_hl(0, "@comment", { fg = "#cc8c3c" })

	-- Types and macros
	api.nvim_set_hl(0, "@type", { fg = "#95a99f" })
	api.nvim_set_hl(0, "@type.builtin", { link = "@type" })
	api.nvim_set_hl(0, "@storageclass", { link = "@type" })
	api.nvim_set_hl(0, "@include", { link = "@type" })
	api.nvim_set_hl(0, "@constant.macro", { link = "@type" })
	api.nvim_set_hl(0, "@preproc", { link = "@type" })
	api.nvim_set_hl(0, "@define", { link = "@type" })
	api.nvim_set_hl(0, "@function.macro", { link = "@type" })

	-- Keywords
	api.nvim_set_hl(0, "@keyword", { fg = "#fcdc3a", bold = true })
	api.nvim_set_hl(0, "@conditional", { link = "@keyword" })
	api.nvim_set_hl(0, "@repeat", { link = "@keyword" })

	-- String like
	api.nvim_set_hl(0, "@string", { fg = "#73c936" })
	api.nvim_set_hl(0, "@string.special", { fg = "#73c936" })
	api.nvim_set_hl(0, "@string.escape", { fg = "#73c936" })
	api.nvim_set_hl(0, "@character", { fg = "#73c936" })

	-- Reset
	api.nvim_set_hl(0, "@number", { link = "Normal" })
	api.nvim_set_hl(0, "@float", { link = "Normal" })
	api.nvim_set_hl(0, "@constant", { link = "Normal" })
	api.nvim_set_hl(0, "@constant.builtin", { link = "Normal" })
	api.nvim_set_hl(0, "@boolean", { link = "Normal" })
	api.nvim_set_hl(0, "@punctuation", { link = "Normal" })
	api.nvim_set_hl(0, "@label", { link = "Normal" })
	api.nvim_set_hl(0, "@punctuation.bracket", { link = "Normal" })
	api.nvim_set_hl(0, "@constructor", { link = "Normal" })
	api.nvim_set_hl(0, "@variable", { link = "Normal" })
	api.nvim_set_hl(0, "@field", { link = "Normal" })
	api.nvim_set_hl(0, "@parameter", { link = "Normal" })
	api.nvim_set_hl(0, "@property", { link = "Normal" })
	api.nvim_set_hl(0, "@constant", { link = "Normal" })
	api.nvim_set_hl(0, "@operator", { link = "Normal" })
	api.nvim_set_hl(0, "@namespace", { link = "Normal" })
	api.nvim_set_hl(0, "@function", { link = "Normal" })
	api.nvim_set_hl(0, "@function.builtin", { link = "Normal" })
	api.nvim_set_hl(0, "@method", { link = "Normal" })
	api.nvim_set_hl(0, "@type.custom", { link = "Normal" })
end

api.nvim_command("colorscheme gruvbox")

api.nvim_set_hl(0, "@variable", { link = "GruvboxBlue" })
api.nvim_set_hl(0, "@markup.heading", { link = "GruvboxBlue" })

-- Red
api.nvim_set_hl(0, "@type", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@type.builtin", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@storageclass", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@include", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@constant.macro", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@preproc", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@keyword.import", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@keyword.directive", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@keyword.operator", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@define", { link = "GruvboxRed" })
api.nvim_set_hl(0, "@function.macro", { link = "GruvboxRed" })

-- White
api.nvim_set_hl(0, "@string", { link = "Normal" })
api.nvim_set_hl(0, "@punctuation.delimiter", { link = "GruvboxFg3" })
api.nvim_set_hl(0, "@string.escape", { link = "Normal" })
api.nvim_set_hl(0, "@parameter", { link = "Normal" })
api.nvim_set_hl(0, "@property", { link = "Normal" })
api.nvim_set_hl(0, "@variable.member", { link = "Normal" })
api.nvim_set_hl(0, "@variable.builtin", { link = "Normal" })
api.nvim_set_hl(0, "@constant", { link = "Normal" })
api.nvim_set_hl(0, "@punctuation", { link = "GruvboxFg3" })
api.nvim_set_hl(0, "@punctuation.bracket", { link = "GruvboxFg3" })
api.nvim_set_hl(0, "@operator", { link = "GruvboxFg3" })
api.nvim_set_hl(0, "@namespace", { link = "Normal" })
api.nvim_set_hl(0, "@conditional.ternary", { link = "Normal" })
api.nvim_set_hl(0, "CocSemFileScopeVariable", { link = "Normal" })
api.nvim_set_hl(0, "CocSemTypeParameter", { link = "Normal" })
api.nvim_set_hl(0, "CocSemTypeSelfKeyword", { link = "Normal" })

-- Orange
api.nvim_set_hl(0, "@function", { link = "GruvboxOrange" })
api.nvim_set_hl(0, "@function.call", { link = "GruvboxOrange" })
api.nvim_set_hl(0, "@function.method.call", { link = "GruvboxOrange" })
api.nvim_set_hl(0, "@method", { link = "GruvboxOrange" })
api.nvim_set_hl(0, "CocSemTypeMethod", { link = "GruvboxOrange" })
api.nvim_set_hl(0, "CocSemMethod", { link = "GruvboxOrange" })

-- Yellow
api.nvim_set_hl(0, "@type.custom", { link = "GruvboxYellow" })
api.nvim_set_hl(0, "@type", { link = "GruvboxYellow" })
api.nvim_set_hl(0, "CocSemTypeStruct", { link = "GruvboxYellow" })

api.nvim_set_hl(0, "CocSemClass", { link = "GruvboxYellow" })
api.nvim_set_hl(0, "CocSemTypeClass", { link = "GruvboxYellow" })

-- Purple
api.nvim_set_hl(0, "@constant", { link = "GruvboxPurple" })
api.nvim_set_hl(0, "CocSemEnumMember", { link = "GruvboxPurple" })
api.nvim_set_hl(0, "@constant.builtin", { link = "GruvboxPurple" })

-- Green
api.nvim_set_hl(0, "@markup.quote", { link = "GruvboxGreen" })

-- Grey
api.nvim_set_hl(0, "@nospell", { link = "GruvboxGray" })
api.nvim_set_hl(0, "@attribute", { link = "GruvboxGray" })
api.nvim_set_hl(0, "@comment", { link = "GruvboxGray" })

-- Disable some semantic token highlights
api.nvim_set_hl(0, "CocSemType", {})
api.nvim_set_hl(0, "CocSemComment", {})
api.nvim_set_hl(0, "CocSemEnum", {})
api.nvim_set_hl(0, "CocSemMacro", {})
api.nvim_set_hl(0, "CocSemTypeMacro", {})
api.nvim_set_hl(0, "CocSemDeducedClass", { link = "GruvboxRed" })

-- api.nvim_command("colorscheme gruvbox")
api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true })
api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true })
api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true })
api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true })
api.nvim_set_hl(0, "DiagnosticUnnecessary", { undercurl = true })

api.nvim_set_hl(0, "CocErrorHighlight", { undercurl = true })
api.nvim_set_hl(0, "CocWarningHighlight", { undercurl = true })
api.nvim_set_hl(0, "CocInfoHighlight", { undercurl = true })
api.nvim_set_hl(0, "CocHintHighlight", { undercurl = true })
-- api.nvim_set_hl(0, "CocUnusedHighlight", { undercurl = true })

-- if vim.g.neovide then
-- jblow_theme()
-- tsoding_theme()
-- end
