local c = require("nvimcode.colors")
local u = require("nvimcode.utils")

local hl = vim.api.nvim_set_hl
local theme = {}
local transparent = false

vim.api.nvim_buf_create_user_command(0, "TransparentToggle", function()
	transparent = not transparent
	theme.set_highlights()
end, { })

theme.set_highlights = function()
	if transparent then
		hl(0, "Normal", { fg = c.Front, bg = c.none })
    hl(0, "NormalFloat", {fg = c.none, bg = c.none})
		hl(0, "NeoTreeNormal", { bg = c.none })
		hl(0, "NeoTreeNormalNC", { bg = c.none })
		hl(0, "NotifyBackground", { bg = c.Back })
		hl(0, "IndentBlanklineChar", { fg = c.Context, bg = c.none, nocombine = true })
		hl(0, "IndentBlanklineSpaceChar", { fg = c.Context, bg = c.none, nocombine = true })
		hl(0, "IndentBlanklineSpaceCharBlankline", { fg = c.Context, bg = c.none, nocombine = true })
		hl(0, "VertSplit", { link = "IndentBlanklineChar" })
		hl(0, "NeoTreeWinSeparator", { fg = c.Context })
	else
		hl(0, "Normal", { fg = c.Front, bg = c.Back })
    hl(0, "NormalFloat", {fg = c.Front, bg = u.lighten(c.Back, 0.97)  })
		hl(0, "NeoTreeNormal", { bg = u.darken(c.Back, 0.95) })
		hl(0, "NeoTreeNormalNC", { bg = u.darken(c.Back, 0.95) })
		hl(0, "VertSplit", { fg = "#292929", bg = c.none })
		hl(0, "NeoTreeWinSeparator", { fg = c.Back })
		hl(0, "IndentBlanklineChar", { fg = "#232323", bg = c.none, nocombine = true })
		hl(0, "IndentBlanklineSpaceChar", { fg = "#232323", bg = c.none, nocombine = true })
		hl(0, "IndentBlanklineSpaceCharBlankline", { fg = "#232323", bg = c.none, nocombine = true })
	end
	hl(0, "ColorColumn", { fg = c.none, bg = "#1f1f1f" })
	hl(0, "Cursor", { fg = c.CursorDark, bg = c.CursorLight })
	hl(0, "CursorLine", { bg = c.CursorDarkDark })
	hl(0, "CursorColumn", { fg = c.none, bg = c.CursorDarkDark })
	hl(0, "Directory", { fg = c.Blue, bg = c.none })
	hl(0, "DiffAdd", { fg = c.none, bg = c.DiffGreenLight })
	hl(0, "DiffChange", { fg = c.none, bg = c.DiffRedDark })
	hl(0, "DiffDelete", { fg = c.none, bg = c.DiffRedLight })
	hl(0, "DiffText", { fg = c.none, bg = c.DiffRedLight })
	hl(0, "EndOfBuffer", { fg = c.Back, bg = c.none })
	hl(0, "ErrorMsg", { fg = c.Red, bg = c.Back })
	hl(0, "Folded", { fg = c.none, bg = c.FoldBackground })
	hl(0, "FoldColumn", { fg = c.LineNumber, bg = c.none })
	hl(0, "SignColumn", { fg = c.none, bg = c.none })
	hl(0, "IncSearch", { fg = c.None, bg = c.SearchCurrent })
	hl(0, "LineNr", { fg = c.LineNumber, bg = c.none })
	hl(0, "CursorLineNr", { fg = c.CursorLineNumber, bg = c.Back })
	hl(0, "MatchParen", { fg = c.none, bg = c.CursorDark })
	hl(0, "ModeMsg", { fg = c.Front, bg = c.LeftDark })
	hl(0, "MoreMsg", { fg = c.Front, bg = c.LeftDark })
	hl(0, "NonText", { fg = c.LineNumber, bg = c.none })
	hl(0, "Pmenu", { fg = c.none, bg = "#1e2127" })
	hl(0, "PmenuSel", { fg = c.PopupFront, bg = c.PopupHighlightBlue })
	hl(0, "PmenuSbar", { fg = c.none, bg = c.PopupHighlightGray })
	hl(0, "PmenuThumb", { fg = c.none, bg = c.PopupFront })
	hl(0, "FloatBorder", { fg = c.TabOther, bg = c.none })
	hl(0, "FloatTitle", { fg = c.Front, bg = c.none })
	hl(0, "Question", { fg = c.Blue, bg = c.Back })
	hl(0, "Search", { fg = c.none, bg = u.darken(c.Violet, 0.6) })
	hl(0, "SpecialKey", { fg = c.Blue, bg = c.None })
	hl(0, "StatusLine", { fg = c.Front, bg = c.none })
	hl(0, "StatusLineNC", { fg = "#232323", bg = c.none })

	hl(0, "TabLine", { fg = c.TabOther, bg = c.TabOutside })
	hl(0, "TabLineSel", { fg = c.Front, bg = c.TabCurrent })
	hl(0, "TabLineFill", { fg = c.Front, bg = c.none })
	hl(0, "TabLineSep", { fg = c.TabCurrent, bg = c.none })
	hl(0, "TabLineSepIn", { fg = c.TabOutside, bg = c.none })

	hl(0, "Title", { fg = c.None, bg = c.None, bold = true })
	hl(0, "Visual", { fg = c.None, bg = c.Selection })
	hl(0, "VisualNOS", { fg = c.None, bg = c.Selection })
	hl(0, "WarningMsg", { fg = c.Red, bg = c.Back, bold = true })
	hl(0, "WildMenu", { fg = c.None, bg = c.Selection })
	hl(0, "Comment", { fg = c.Green, bg = c.none })
	hl(0, "Constant", { fg = c.Blue, bg = c.none })
	hl(0, "String", { fg = c.Orange, bg = c.none })
	hl(0, "Character", { fg = c.Orange, bg = c.none })
	hl(0, "Number", { fg = c.LightGreen, bg = c.none })
	hl(0, "Boolean", { fg = c.Blue, bg = c.none })
	hl(0, "Float", { fg = c.LightGreen, bg = c.none })
	hl(0, "Identifier", { fg = c.LightBlue, bg = c.none })
	hl(0, "Function", { fg = c.Yellow, bg = c.none })
	hl(0, "Statement", { fg = c.Pink, bg = c.none })
	hl(0, "Conditional", { fg = c.Pink, bg = c.none })
	hl(0, "Repeat", { fg = c.Pink, bg = c.none })
	hl(0, "Label", { fg = c.Pink, bg = c.none })
	hl(0, "Operator", { fg = c.Front, bg = c.none })
	hl(0, "Keyword", { fg = c.Pink, bg = c.none })
	hl(0, "Exception", { fg = c.Pink, bg = c.none })
	hl(0, "PreProc", { fg = c.Pink, bg = c.none })
	hl(0, "Include", { fg = c.Pink, bg = c.none })
	hl(0, "Define", { fg = c.Pink, bg = c.none })
	hl(0, "Macro", { fg = c.Pink, bg = c.none })
	hl(0, "Type", { fg = c.BlueGreen, bg = c.none })
	hl(0, "StorageClass", { fg = c.Blue, bg = c.none })
	hl(0, "Structure", { fg = c.Blue, bg = c.none })
	hl(0, "Typedef", { fg = c.Blue, bg = c.none })
	hl(0, "Special", { fg = c.YellowOrange, bg = c.none })
	hl(0, "SpecialChar", { fg = c.Front, bg = c.none })
	hl(0, "Tag", { fg = c.Front, bg = c.none })
	hl(0, "Delimiter", { fg = c.Front, bg = c.none })
	hl(0, "SpecialComment", { fg = c.Green, bg = c.none })
	hl(0, "Debug", { fg = c.Front, bg = c.none })
	hl(0, "Underlined", { fg = c.None, bg = c.none, underline = true })
	hl(0, "Conceal", { fg = c.Front, bg = c.Back })
	hl(0, "Ignore", { fg = c.Front, bg = c.none })
	hl(0, "Error", { fg = c.Red, bg = c.Back, undercurl = true, sp = c.Red })
	hl(0, "Todo", { fg = c.YellowOrange, bg = c.Back, bold = true })
	hl(0, "SpellBad", { fg = c.Red, bg = c.Back, undercurl = true, sp = c.Red })
	hl(0, "SpellCap", { fg = c.Red, bg = c.Back, undercurl = true, sp = c.Red })
	hl(0, "SpellRare", { fg = c.Red, bg = c.Back, undercurl = true, sp = c.Red })
	hl(0, "SpellLocal", { fg = c.Red, bg = c.Back, undercurl = true, sp = c.Red })
	hl(0, "Whitespace", { fg = c.LineNumber })

	-- Treesitter
	hl(0, "@error", { fg = c.none, bg = c.none })
	hl(0, "@punctuation.bracket", { fg = "#999999", bg = c.none })
	hl(0, "@punctuation.special", { fg = c.Front, bg = c.none })
	hl(0, "@punctuation.special.markdown", { fg = c.Blue, bold = true })
	hl(0, "@comment", { fg = c.Green, bg = c.none })
	hl(0, "@constant", { fg = c.Yellow, bg = c.none })
	hl(0, "@constant.builtin", { fg = c.Blue, bg = c.none })
	hl(0, "@constant.macro", { fg = c.BlueGreen, bg = c.none })
	hl(0, "@string.regex", { fg = c.Orange, bg = c.none })
	hl(0, "@string", { fg = c.Orange, bg = c.none })
	hl(0, "@character", { fg = c.Orange, bg = c.none })
	hl(0, "@number", { fg = c.LightGreen, bg = c.none })
	hl(0, "@boolean", { fg = c.Blue, bg = c.none })
	hl(0, "@float", { fg = c.LightGreen, bg = c.none })
	hl(0, "@annotation", { fg = c.Yellow, bg = c.none })
	hl(0, "@attribute", { fg = c.BlueGreen, bg = c.none })
	hl(0, "@namespace", { fg = c.BlueGreen, bg = c.none })
	hl(0, "@function.builtin", { fg = c.YellowOrange, bg = c.none })
	hl(0, "@function", { fg = c.Yellow, bg = c.none })
	hl(0, "@function.macro", { fg = c.Yellow, bg = c.none })
	hl(0, "@parameter", { fg = c.Blue, bg = c.none })
	hl(0, "@parameter.reference", { fg = c.LightBlue, bg = c.none })
	hl(0, "@method", { fg = c.Yellow, bg = c.none })
	hl(0, "@field", { fg = c.LightBlue, bg = c.none })
	hl(0, "@property", { fg = c.LightBlue, bg = c.none })
	hl(0, "@constructor", { fg = c.BlueGreen, bg = c.none })
	hl(0, "@conditional", { fg = c.Pink, bg = c.none })
	hl(0, "@repeat", { fg = c.Pink, bg = c.none })
	hl(0, "@label", { fg = c.LightBlue, bg = c.none })
	hl(0, "@keyword", { fg = c.Pink, bg = c.none })
	hl(0, "@keyword.function", { fg = c.Blue, bg = c.none })
	hl(0, "@keyword.operator", { fg = c.Blue, bg = c.none })
	hl(0, "@operator", { fg = c.Front, bg = c.none })
	hl(0, "@exception", { fg = c.Pink, bg = c.none })
	hl(0, "@type", { fg = c.BlueGreen, bg = c.none })
	hl(0, "@type.builtin", { fg = c.BlueGreen, bg = c.none })
	hl(0, "@type.qualifier", { fg = c.Blue, bg = c.none })
	hl(0, "@storageClass", { fg = c.Blue, bg = c.none })
	hl(0, "@structure", { fg = c.LightBlue, bg = c.none })
	hl(0, "@include", { fg = c.Pink, bg = c.none })
	hl(0, "@variable", { fg = c.LightBlue, bg = c.none })
	hl(0, "@variable.builtin", { fg = c.LightBlue, bg = c.none })
	hl(0, "@text", { fg = c.Front, bg = c.none })
	hl(0, "@text.underline", { fg = c.YellowOrange, bg = c.none })
	hl(0, "@tag", { fg = c.Blue, bg = c.none })
	hl(0, "@tag.delimiter", { fg = c.Gray, bg = c.none })
	hl(0, "@tag.attribute", { fg = c.LightBlue, bg = c.none })

	hl(0, "@text.title", { fg = c.Blue, bold = true })
	hl(0, "@text.literal", { fg = c.Green, bg = c.none })
	hl(0, "markdown@text.literal", { fg = c.Orange, bg = c.none })
	hl(0, "markdown_inline@text.literal", { fg = c.Orange, bg = c.none })
	hl(0, "@text.emphasis", { fg = c.Front, bg = c.none, italic = true })
	hl(0, "@text.strong", { fg = c.Blue, bold = true })
	hl(0, "@text.uri", { fg = c.Front, bg = c.none })
	hl(0, "@textReference", { fg = c.Orange })
	hl(0, "@punctuation.delimiter", { fg = c.Front, bg = c.none })
	hl(0, "@stringEscape", { fg = c.Orange, bold = true })

	hl(0, "@text.note", { fg = c.BlueGreen, bg = c.none, bold = true })
	hl(0, "@text.warning", { fg = c.YellowOrange, bg = c.none, bold = true })
	hl(0, "@text.danger", { fg = c.Red, bg = c.none, bold = true })

	-- Markdown
	hl(0, "markdownBold", { fg = c.Blue, bold = true })
	hl(0, "markdownCode", { fg = c.Orange, bg = c.none })
	hl(0, "markdownRule", { fg = c.Blue, bold = true })
	hl(0, "markdownCodeDelimiter", { fg = c.Front, bg = c.none })
	hl(0, "markdownHeadingDelimiter", { fg = c.Blue, bg = c.none })
	hl(0, "markdownFootnote", { fg = c.Orange, bg = c.none })
	hl(0, "markdownFootnoteDefinition", { fg = c.Orange })
	hl(0, "markdownUrl", { fg = c.Front, bg = c.none, underline = true })
	hl(0, "markdownLinkText", { fg = c.Orange })
	hl(0, "markdownEscape", { fg = c.Orange })

	-- JSON
	hl(0, "jsonKeyword", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsonEscape", { fg = c.YellowOrange, bg = c.none })
	hl(0, "jsonNull", { fg = c.Blue, bg = c.none })
	hl(0, "jsonBoolean", { fg = c.Blue, bg = c.none })

	-- HTML
	hl(0, "htmlTag", { fg = c.Gray, bg = c.none })
	hl(0, "htmlEndTag", { fg = c.Gray, bg = c.none })
	hl(0, "htmlTagName", { fg = c.Blue, bg = c.none })
	hl(0, "htmlSpecialTagName", { fg = c.Blue, bg = c.none })
	hl(0, "htmlArg", { fg = c.LightBlue, bg = c.none })

	-- PHP
	hl(0, "phpStaticClasses", { fg = c.BlueGreen, bg = c.none })
	hl(0, "phpMethod", { fg = c.Yellow, bg = c.none })
	hl(0, "phpClass", { fg = c.BlueGreen, bg = c.none })
	hl(0, "phpFunction", { fg = c.Yellow, bg = c.none })
	hl(0, "phpInclude", { fg = c.Blue, bg = c.none })
	hl(0, "phpUseClass", { fg = c.BlueGreen, bg = c.none })
	hl(0, "phpRegion", { fg = c.BlueGreen, bg = c.none })
	hl(0, "phpMethodsVar", { fg = c.LightBlue, bg = c.none })

	-- CSS
	hl(0, "cssBraces", { fg = c.Front, bg = c.none })
	hl(0, "cssInclude", { fg = c.Pink, bg = c.none })
	hl(0, "cssTagName", { fg = c.YellowOrange, bg = c.none })
	hl(0, "cssClassName", { fg = c.YellowOrange, bg = c.none })
	hl(0, "cssPseudoClass", { fg = c.YellowOrange, bg = c.none })
	hl(0, "cssPseudoClassId", { fg = c.YellowOrange, bg = c.none })
	hl(0, "cssPseudoClassLang", { fg = c.YellowOrange, bg = c.none })
	hl(0, "cssIdentifier", { fg = c.YellowOrange, bg = c.none })
	hl(0, "cssProp", { fg = c.LightBlue, bg = c.none })
	hl(0, "cssDefinition", { fg = c.LightBlue, bg = c.none })
	hl(0, "cssAttr", { fg = c.Orange, bg = c.none })
	hl(0, "cssAttrRegion", { fg = c.Orange, bg = c.none })
	hl(0, "cssColor", { fg = c.Orange, bg = c.none })
	hl(0, "cssFunction", { fg = c.Orange, bg = c.none })
	hl(0, "cssFunctionName", { fg = c.Orange, bg = c.none })
	hl(0, "cssVendor", { fg = c.Orange, bg = c.none })
	hl(0, "cssValueNumber", { fg = c.Orange, bg = c.none })
	hl(0, "cssValueLength", { fg = c.Orange, bg = c.none })
	hl(0, "cssUnitDecorators", { fg = c.Orange, bg = c.none })
	hl(0, "cssStyle", { fg = c.LightBlue, bg = c.none })
	hl(0, "cssImportant", { fg = c.Blue, bg = c.none })

	-- JavaScript
	hl(0, "jsVariableDef", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsFuncArgs", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsFuncBlock", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsRegexpString", { fg = c.LightRed, bg = c.none })
	hl(0, "jsThis", { fg = c.Blue, bg = c.none })
	hl(0, "jsOperatorKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "jsDestructuringBlock", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsObjectKey", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsGlobalObjects", { fg = c.BlueGreen, bg = c.none })
	hl(0, "jsModuleKeyword", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsClassDefinition", { fg = c.BlueGreen, bg = c.none })
	hl(0, "jsClassKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "jsExtendsKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "jsExportDefault", { fg = c.Pink, bg = c.none })
	hl(0, "jsFuncCall", { fg = c.Yellow, bg = c.none })
	hl(0, "jsObjectValue", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsParen", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsObjectProp", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsIfElseBlock", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsParenIfElse", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsSpreadOperator", { fg = c.LightBlue, bg = c.none })
	hl(0, "jsSpreadExpression", { fg = c.LightBlue, bg = c.none })

	-- Typescript
	hl(0, "typescriptLabel", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptExceptions", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptBraces", { fg = c.Front, bg = c.none })
	hl(0, "typescriptEndColons", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptParens", { fg = c.Front, bg = c.none })
	hl(0, "typescriptDocTags", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptDocComment", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptLogicSymbols", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptImport", { fg = c.Pink, bg = c.none })
	hl(0, "typescriptBOM", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptVariableDeclaration", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptVariable", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptExport", { fg = c.Pink, bg = c.none })
	hl(0, "typescriptAliasDeclaration", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptAliasKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptClassName", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptAccessibilityModifier", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptOperator", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptArrowFunc", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptMethodAccessor", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptMember", { fg = c.Yellow, bg = c.none })
	hl(0, "typescriptTypeReference", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptTemplateSB", { fg = c.YellowOrange, bg = c.none })
	hl(0, "typescriptArrowFuncArg", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptParamImpl", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptFuncComma", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptCastKeyword", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptCall", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptCase", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptReserved", { fg = c.Pink, bg = c.none })
	hl(0, "typescriptDefault", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptDecorator", { fg = c.Yellow, bg = c.none })
	hl(0, "typescriptPredefinedType", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptClassHeritage", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptClassExtends", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptClassKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptBlock", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptDOMDocProp", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptTemplateSubstitution", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptClassBlock", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptFuncCallArg", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptIndexExpr", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptConditionalParen", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptArray", { fg = c.Yellow, bg = c.none })
	hl(0, "typescriptES6SetProp", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptObjectLiteral", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptTypeParameter", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptEnumKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptEnum", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptLoopParen", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptParenExp", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptModule", { fg = c.LightBlue, bg = c.none })
	hl(0, "typescriptAmbientDeclaration", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptFuncTypeArrow", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptInterfaceHeritage", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptInterfaceName", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptInterfaceKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptInterfaceExtends", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptGlobal", { fg = c.BlueGreen, bg = c.none })
	hl(0, "typescriptAsyncFuncKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptFuncKeyword", { fg = c.Blue, bg = c.none })
	hl(0, "typescriptGlobalMethod", { fg = c.Yellow, bg = c.none })
	hl(0, "typescriptPromiseMethod", { fg = c.Yellow, bg = c.none })

	-- XML
	hl(0, "xmlTag", { fg = c.Blue, bg = c.none })
	hl(0, "xmlTagName", { fg = c.Blue, bg = c.none })
	hl(0, "xmlEndTag", { fg = c.Blue, bg = c.none })

	-- Ruby
	hl(0, "rubyClassNameTag", { fg = c.BlueGreen, bg = c.none })
	hl(0, "rubyClassName", { fg = c.BlueGreen, bg = c.none })
	hl(0, "rubyModuleName", { fg = c.BlueGreen, bg = c.none })
	hl(0, "rubyConstant", { fg = c.BlueGreen, bg = c.none })

	-- Golang
	hl(0, "goPackage", { fg = c.Blue, bg = c.none })
	hl(0, "goImport", { fg = c.Blue, bg = c.none })
	hl(0, "goVar", { fg = c.Blue, bg = c.none })
	hl(0, "goConst", { fg = c.Blue, bg = c.none })
	hl(0, "goStatement", { fg = c.Pink, bg = c.none })
	hl(0, "goType", { fg = c.BlueGreen, bg = c.none })
	hl(0, "goSignedInts", { fg = c.BlueGreen, bg = c.none })
	hl(0, "goUnsignedInts", { fg = c.BlueGreen, bg = c.none })
	hl(0, "goFloats", { fg = c.BlueGreen, bg = c.none })
	hl(0, "goComplexes", { fg = c.BlueGreen, bg = c.none })
	hl(0, "goBuiltins", { fg = c.Yellow, bg = c.none })
	hl(0, "goBoolean", { fg = c.Blue, bg = c.none })
	hl(0, "goPredefinedIdentifiers", { fg = c.Blue, bg = c.none })
	hl(0, "goTodo", { fg = c.Green, bg = c.none })
	hl(0, "goDeclaration", { fg = c.Blue, bg = c.none })
	hl(0, "goDeclType", { fg = c.Blue, bg = c.none })
	hl(0, "goTypeDecl", { fg = c.Blue, bg = c.none })
	hl(0, "goTypeName", { fg = c.BlueGreen, bg = c.none })
	hl(0, "goVarAssign", { fg = c.LightBlue, bg = c.none })
	hl(0, "goVarDefs", { fg = c.LightBlue, bg = c.none })
	hl(0, "goReceiver", { fg = c.Front, bg = c.none })
	hl(0, "goReceiverType", { fg = c.Front, bg = c.none })
	hl(0, "goFunctionCall", { fg = c.Yellow, bg = c.none })
	hl(0, "goMethodCall", { fg = c.Yellow, bg = c.none })
	hl(0, "goSingleDecl", { fg = c.LightBlue, bg = c.none })

	-- Python
	hl(0, "pythonStatement", { fg = c.Blue, bg = c.none })
	hl(0, "pythonOperator", { fg = c.Blue, bg = c.none })
	hl(0, "pythonException", { fg = c.Pink, bg = c.none })
	hl(0, "pythonExClass", { fg = c.BlueGreen, bg = c.none })
	hl(0, "pythonBuiltinObj", { fg = c.LightBlue, bg = c.none })
	hl(0, "pythonBuiltinType", { fg = c.BlueGreen, bg = c.none })
	hl(0, "pythonBoolean", { fg = c.Blue, bg = c.none })
	hl(0, "pythonNone", { fg = c.Blue, bg = c.none })
	hl(0, "pythonTodo", { fg = c.Blue, bg = c.none })
	hl(0, "pythonClassVar", { fg = c.Blue, bg = c.none })
	hl(0, "pythonClassDef", { fg = c.BlueGreen, bg = c.none })

	-- TeX
	hl(0, "texStatement", { fg = c.Blue, bg = c.none })
	hl(0, "texBeginEnd", { fg = c.Yellow, bg = c.none })
	hl(0, "texBeginEndName", { fg = c.LightBlue, bg = c.none })
	hl(0, "texOption", { fg = c.LightBlue, bg = c.none })
	hl(0, "texBeginEndModifier", { fg = c.LightBlue, bg = c.none })
	hl(0, "texDocType", { fg = c.Pink, bg = c.none })
	hl(0, "texDocTypeArgs", { fg = c.LightBlue, bg = c.none })

	-- Git
	hl(0, "gitcommitHeader", { fg = c.Gray, bg = c.none })
	hl(0, "gitcommitOnBranch", { fg = c.Gray, bg = c.none })
	hl(0, "gitcommitBranch", { fg = c.Pink, bg = c.none })
	hl(0, "gitcommitComment", { fg = c.Gray, bg = c.none })
	hl(0, "gitcommitSelectedType", { fg = c.Green, bg = c.none })
	hl(0, "gitcommitSelectedFile", { fg = c.Green, bg = c.none })
	hl(0, "gitcommitDiscardedType", { fg = c.Red, bg = c.none })
	hl(0, "gitcommitDiscardedFile", { fg = c.Red, bg = c.none })
	hl(0, "gitcommitOverflow", { fg = c.Red, bg = c.none })
	hl(0, "gitcommitSummary", { fg = c.Pink, bg = c.none })
	hl(0, "gitcommitBlank", { fg = c.Pink, bg = c.none })

	-- Lua
	hl(0, "luaFuncCall", { fg = c.Yellow, bg = c.none })
	hl(0, "luaFuncArgName", { fg = c.LightBlue, bg = c.none })
	hl(0, "luaFuncKeyword", { fg = c.Pink, bg = c.none })
	hl(0, "luaLocal", { fg = c.Pink, bg = c.none })
	hl(0, "luaBuiltIn", { fg = c.Blue, bg = c.none })

	-- SH
	hl(0, "shDeref", { fg = c.LightBlue, bg = c.none })
	hl(0, "shVariable", { fg = c.LightBlue, bg = c.none })

	-- SQL
	hl(0, "sqlKeyword", { fg = c.Pink, bg = c.none })
	hl(0, "sqlFunction", { fg = c.YellowOrange, bg = c.none })
	hl(0, "sqlOperator", { fg = c.Pink, bg = c.none })

	-- YAML
	hl(0, "yamlKey", { fg = c.Blue, bg = c.none })
	hl(0, "yamlConstant", { fg = c.Blue, bg = c.none })

	-- Gitgutter
	hl(0, "GitGutterAdd", { fg = c.Green, bg = c.none })
	hl(0, "GitGutterChange", { fg = c.Yellow, bg = c.none })
	hl(0, "GitGutterDelete", { fg = c.Red, bg = c.none })

	-- Git Signs
	hl(0, "GitSignsAdd", { fg = c.Green, bg = c.none })
	hl(0, "GitSignsChange", { fg = c.Yellow, bg = c.none })
	hl(0, "GitSignsDelete", { fg = c.Red, bg = c.none })
	hl(0, "GitSignsTopdelete", { fg = u.darken(c.Red, 0.6), bg = c.none })
	hl(0, "GitSignsChangedelete", { fg = u.darken(c.Yellow, 0.6), bg = c.none })
	hl(0, "GitSignsAddLn", { fg = c.Back, bg = c.Green })
	hl(0, "GitSignsChangeLn", { fg = c.Back, bg = c.Yellow })
	hl(0, "GitSignsDeleteLn", { fg = c.Back, bg = c.Red })

	-- IndentBlankLine
	hl(0, "IndentBlanklineContextChar", { fg = u.lighten("#e5c76b", 0.5), bg = c.none, nocombine = true })
	hl(0, "IndentBlanklineContextStart", { fg = c.ContextCurrent, bg = c.none, nocombine = true })

	-- LSP
	hl(0, "LspReferenceText", { fg = c.none, bg = c.PopupHighlightGray })
	hl(0, "LspReferenceRead", { fg = c.none, bg = c.PopupHighlightGray })
	hl(0, "LspReferenceWrite", { fg = c.none, bg = c.PopupHighlightGray })

	-- Nvim CMP
	hl(0, "CmpBorder", { fg = c.none, bg = c.none })
	hl(0, "CmpDocBorder", { fg = "#1e2127", bg = "#1e2127" })
	hl(0, "CmpItemKindVariable", { fg = c.LightBlue, bg = c.none })
	hl(0, "CmpItemKindInterface", { fg = c.LightBlue, bg = c.none })
	hl(0, "CmpItemKindText", { fg = c.LightBlue, bg = c.none })
	hl(0, "CmpItemKindFunction", { fg = c.Pink, bg = c.none })
	hl(0, "CmpItemKindMethod", { fg = c.Pink, bg = c.none })
	hl(0, "CmpItemKindKeyword", { fg = c.Front, bg = c.none })
	hl(0, "CmpItemKindProperty", { fg = c.Front, bg = c.none })
	hl(0, "CmpItemKindUnit", { fg = c.Front, bg = c.none })
	hl(0, "CmpItemKindConstructor", { fg = c.UiOrange, bg = c.none })
	hl(0, "CmpItemMenu", { fg = c.PopupFront, bg = c.none })
	hl(0, "CmpItemAbbr", { fg = c.Front, bg = c.none })
	hl(0, "CmpItemAbbrDeprecated", { fg = c.CursorDark, bg = c.PopupBack, strikethrough = true })
	hl(0, "CmpItemAbbrMatch", { fg = u.lighten(c.Pink, 1.0), bg = c.none, bold = true })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = u.lighten(c.Pink, 1.0), bg = c.none, bold = true })
	hl(0, "CompeDocumentation", { link = "Pmenu" })
	hl(0, "CompeDocumentationBorder", { link = "Pmenu" })
	hl(0, "CmpItemKind", { link = "Pmenu" })
	hl(0, "CmpItemKindClassic", { link = "@comment" })
	hl(0, "CmpItemKindClass", { link = "CmpItemKindConstructor" })
	hl(0, "CmpItemKindModule", { link = "CmpItemKindKeyword" })
	hl(0, "CmpItemKindOperator", { link = "@operator" })
	hl(0, "CmpItemKindReference", { link = "@parameter.reference" })
	hl(0, "CmpItemKindValue", { link = "@field" })
	hl(0, "CmpItemKindField", { link = "@field" })
	hl(0, "CmpItemKindEnum", { link = "@field" })
	hl(0, "CmpItemKindSnippet", { link = "@text" })
	hl(0, "CmpItemKindColor", { link = "cssColor" })
	hl(0, "CmpItemKindFile", { link = "@text.uri" })
	hl(0, "CmpItemKindFolder", { link = "@text.uri" })
	hl(0, "CmpItemKindEvent", { link = "@constant" })
	hl(0, "CmpItemKindEnumMember", { link = "@field" })
	hl(0, "CmpItemKindConstant", { link = "@constant" })
	hl(0, "CmpItemKindStruct", { link = "@structure" })
	hl(0, "CmpItemKindTypeParameter", { link = "@parameter" })

	-- Dashboard
	hl(0, "DashboardHeader", { fg = c.Blue, bg = c.none })
	hl(0, "DashboardCenter", { fg = c.YellowOrange, bg = c.none })
	hl(0, "DashboardCenterIcon", { fg = c.YellowOrange, bg = c.none })
	hl(0, "DashboardShortCut", { fg = c.Pink, bg = c.none })
	hl(0, "DashboardFooter", { fg = c.Blue, bg = c.none, italic = true })

	hl(0, "LspFloatWinNormal", { fg = c.Front, bg = c.none })
	hl(0, "LspFloatWinBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaHoverBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaSignatureHelpBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaCodeActionBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaDefPreviewBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspLinesDiagBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaRenameBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaBorderTitle", { fg = c.CursorDark, bg = c.none })
	hl(0, "LSPSagaDiagnosticTruncateLine", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaDiagnosticBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaDiagnosticBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaShTruncateLine", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaShTruncateLine", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaDocTruncateLine", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaRenameBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaLspFinderBorder", { fg = c.LineNumber, bg = c.none })
	hl(0, "LspSagaLightBulb", { fg = c.warning })

	hl(0, "TelescopeBorder", { fg = c.Back, bg = c.Back })
	hl(0, "TelescopePromptBorder", { fg = c.Back, bg = c.Back })
	hl(0, "TelescopePromptNormal", { fg = c.none, bg = u.lighten(c.Back, 0.9) })
	hl(0, "TelescopeResultsBorder", { fg = c.Back, bg = c.Back })
	hl(0, "TelescopePreviewBorder", { fg = "#1e2127", bg = "#1e2127" })
	hl(0, "TelescopePreviewTitle", { fg = c.Front, bg = c.Green })
	hl(0, "TelescopePromptTitle", { fg = c.Back, bg = c.Red })
	hl(0, "TelescopeResultsTitle", { fg = c.Front, bg = c.info })
	hl(0, "TelescopeNormal", { fg = c.none, bg = c.Back })
	hl(0, "TelescopeSelection", { fg = c.Front, bg = u.darken(c.Violet, 0.9) })
	hl(0, "TelescopeMultiSelection", { fg = c.Front, bg = u.darken(c.Violet, 0.9) })
	hl(0, "TelescopeMatching", { fg = u.lighten(c.Pink, 1.0), bg = c.none, bold = true })
	hl(0, "TelescopePromptPrefix", { fg = c.warning, bg = c.Back })
	hl(0, "TelescopePreviewNormal", { fg = c.none, bg = "#1e2127" })
	hl(0, "TelescopePromptCounter", { fg = c.warning, bg = u.lighten(c.Back, 0.9) })

	-- symbols-outline
	-- white fg and lualine blue bg
	hl(0, "FocusedSymbol", { fg = "#ffffff", bg = c.UiBlue })
	hl(0, "SymbolsOutlineConnector", { fg = c.LineNumber, bg = c.none })
	hl(0, "diffAdded", { link = "DiffAdd" })
	hl(0, "diffChanged", { link = "DiffChange" })
	hl(0, "diffRemoved", { link = "DiffDelete" })

	hl(0, "DiagnosticError", { fg = c.error })
	hl(0, "DiagnosticWarn", { fg = c.warning })
	hl(0, "DiagnosticInfo", { fg = c.info })
	hl(0, "DiagnosticHint", { fg = c.hint })

	hl(0, "DiagnosticVirtualTextError", { bg = c.none, fg = c.error })
	hl(0, "DiagnosticVirtualTextWarn", { bg = c.none, fg = c.warning })
	hl(0, "DiagnosticVirtualTextInfo", { bg = c.none, fg = c.info })
	hl(0, "DiagnosticVirtualTextHint", { bg = c.none, fg = c.hint })

	hl(0, "DiagnosticUnderlineError", { bg = u.darken(c.error, 0.3), sp = c.error })
	hl(0, "DiagnosticUnderlineWarn", { bg = u.darken(c.warning, 0.3), sp = c.warning })
	hl(0, "DiagnosticUnderlineInfo", { bg = u.darken(c.info, 0.3), sp = c.info })
	hl(0, "DiagnosticUnderlineHint", { bg = u.darken(c.hint, 0.3), sp = c.hint })

	-- Semantic token highlights all
	hl(0, "@lsp.type.module", { link = "@type" })
	hl(0, "@lsp.type.class", { link = "@type" })
	hl(0, "@lsp.type.enum", { link = "@type" })
	hl(0, "@lsp.type.parameter", { fg = "#9cdcfe", bold = true })
	hl(0, "@lsp.mod.decorator", { link = "@attribute" })
	hl(0, "@clsParameter", { link = "@keyword" })
	hl(0, "@lsp.typemod.variable.readonly", { link = "@constant.builtin" })
	hl(0, "@typeHint", { link = "@type" })

	-- Semantic token python
	hl(0, "@lsp.typemod.magicFunction.declaration.python", { link = "@function.builtin" })
	hl(0, "@lsp.typemod.class.typeHint.python", { link = "@type" })
	hl(0, "@lsp.type.selfParameter.python", { link = "@keyword" })
	hl(0, "@lsp.typemod.builtinConstant.builtin.python", { link = "@constant.builtin" })

	-- Semantic token golang
	hl(0, "@lsp.type.namespace.go", { fg = "#4ec9b0", bold = true })

	-- LspInlayHint
	hl(0, "LspInlayHint", { fg = "#999999", bg = u.darken("#333333", 0.75) })

	-- Marks
	hl(0, "MarkSignHL", { fg = c.Orange })
	hl(0, "MarkSignNumHL", { fg = c.Front })

	-- Tabnine
	hl(0, "Tabnine", { fg = "#b179f1" })

	-- Vim-Matchup
	hl(0, "MatchWord", { fg = c.SearchY, bg = c.none })
	hl(0, "MatchParen", { fg = c.SearchY, bg = c.none })

	-- Mini cursorword
	hl(0, "Minicursorword", { link = "LspReferenceText" })

	-- DapUI
	hl(0, [[DapUIVariable]], { fg = c.Pink })
	hl(0, "DapUIScope", { fg = c.Front, bold = true })
	hl(0, "DapUIType", { fg = c.BlueGreen })
	hl(0, "DapUIDecoration", { fg = c.SplitLight })
	hl(0, "DapUIValue", { fg = c.SplitLight })
	hl(0, "DapUIModifiedValue", { fg = c.SplitLight, bold = true, italic = true })
	hl(0, "DapUIStoppedThread", { fg = c.Front, bold = true })
	hl(0, "DapUISource", { fg = c.Front, bold = true })
	hl(0, "DapUIWatchesHeader", { fg = c.Front })
	hl(0, "DapUIWatchesEmpty", { fg = c.error })
	hl(0, "DapUIWatchesError", { fg = c.error })
	hl(0, "DapUIBreakpointsPath", { fg = c.Front, bold = true })

	--NeoTree
	hl(0, "NeoTreeGitUntracked", { fg = c.Green })
	hl(0, "NeoTreeRootName", { bold = true })
	hl(0, "NeoTreeIndentMarker", { fg = "#333333" })
	hl(0, "NeoTreeDirectoryName", { fg = "#999999" })
	hl(0, "NeoTreeDirectoryIcon", { fg = "#999999" })

	hl(0, "HopNextKey", { fg = c.warning })
	hl(0, "HopNextKey1", { fg = c.info })
	hl(0, "HopNextKey2", { fg = c.Back })

	hl(0, "NoiceCmdlinePopupBorder", { fg = c.PopupFront, bg = c.none })
	hl(0, "NoiceLspProgressTitle", { fg = c.hint, bg = c.none })
	hl(0, "NoiceFormatProgressTodo", { link = "Search" })
	-- hl(0, "DapUIThread", { fg = })
	-- hl(0, "DapUIFrameName", { fg = })
	-- hl(0, "DapUILineNumber", { fg = })
	-- hl(0, "DapUIFloatBorder", { fg = })
	-- hl(0, "DapUIWatchesValue", { fg = })
	-- hl(0, "DapUIWatchesFrame", { fg = })
	-- hl(0, "DapUIBreakpointsInfo", { fg = })
	-- hl(0, "DapUIBreakpointsCurrentLine", { fg = })
	-- hl(0, "DapUIBreakpointsLine", { fg = })
end

return theme
