local c = require("nvimcode.colors")
local u = require("nvimcode.utils")

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()
  hl(0, 'Normal', { fg = c.Front, bg = c.Back })
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
	hl(0, "VertSplit", { fg = "#292929", bg = c.Back })
	hl(0, "Folded", { fg = c.none, bg = c.FoldBackground })
	hl(0, "FoldColumn", { fg = c.LineNumber, bg = c.Back })
	hl(0, "SignColumn", { fg = c.none, bg = c.Back })
	hl(0, "IncSearch", { fg = c.None, bg = c.SearchCurrent })
	hl(0, "LineNr", { fg = c.LineNumber, bg = c.Back })
	hl(0, "CursorLineNr", { fg = c.CursorLineNumber, bg = c.Back })
	hl(0, "MatchParen", { fg = c.none, bg = c.CursorDark })
	hl(0, "ModeMsg", { fg = c.Front, bg = c.LeftDark })
	hl(0, "MoreMsg", { fg = c.Front, bg = c.LeftDark })
	hl(0, "NonText", { fg = c.LineNumber, bg = c.Back })
	hl(0, "Pmenu", { fg = c.none, bg = "#1e2127" })
	hl(0, "FloatBorder", { fg = "#ffffff", bg = "#1e2127" })
	hl(0, "PmenuSel", { fg = c.PopupFront, bg = c.PopupHighlightBlue })
	hl(0, "PmenuSbar", { fg = c.none, bg = c.PopupHighlightGray })
	hl(0, "PmenuThumb", { fg = c.none, bg = c.PopupFront })
	hl(0, "Question", { fg = c.Blue, bg = c.Back })
	hl(0, "Search", { fg = "#ffffff", bg = u.darken(c.SearchY, 0.5) })
	hl(0, "SpecialKey", { fg = c.Blue, bg = c.None })
	hl(0, "StatusLine", { fg = c.Front, bg = c.none })
	hl(0, "StatusLineNC", { fg = c.Front, bg = c.LeftDark })

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
	hl(0, "TSError", { fg = c.Red, bg = c.none })
	hl(0, "TSPunctBracket", { fg = c.Front, bg = c.none })
	hl(0, "TSPunctSpecial", { fg = c.Front, bg = c.none })
	hl(0, "markdownTSPunctSpecial", { fg = c.Blue, bold = true })
	hl(0, "TSComment", { fg = c.Green, bg = c.none })
	hl(0, "TSConstant", { fg = c.Yellow, bg = c.none })
	hl(0, "TSConstBuiltin", { fg = c.Blue, bg = c.none })
	hl(0, "TSConstMacro", { fg = c.BlueGreen, bg = c.none })
	hl(0, "TSStringRegex", { fg = c.Orange, bg = c.none })
	hl(0, "TSString", { fg = c.Orange, bg = c.none })
	hl(0, "TSCharacter", { fg = c.Orange, bg = c.none })
	hl(0, "TSNumber", { fg = c.LightGreen, bg = c.none })
	hl(0, "TSBoolean", { fg = c.Blue, bg = c.none })
	hl(0, "TSFloat", { fg = c.LightGreen, bg = c.none })
	hl(0, "TSAnnotation", { fg = c.Yellow, bg = c.none })
	hl(0, "TSAttribute", { fg = c.BlueGreen, bg = c.none })
	hl(0, "TSNamespace", { fg = c.BlueGreen, bg = c.none })
	hl(0, "TSFuncBuiltin", { fg = c.Yellow, bg = c.none })
	hl(0, "TSFunction", { fg = c.Yellow, bg = c.none })
	hl(0, "TSFuncMacro", { fg = c.Yellow, bg = c.none })
	hl(0, "TSParameter", { fg = c.Blue, bg = c.none })
	hl(0, "TSParameterReference", { fg = c.LightBlue, bg = c.none })
	hl(0, "TSMethod", { fg = c.Yellow, bg = c.none })
	hl(0, "TSField", { fg = c.LightBlue, bg = c.none })
	hl(0, "TSProperty", { fg = c.LightBlue, bg = c.none })
	hl(0, "TSConstructor", { fg = c.BlueGreen, bg = c.none })
	hl(0, "TSConditional", { fg = c.Pink, bg = c.none })
	hl(0, "TSRepeat", { fg = c.Pink, bg = c.none })
	hl(0, "TSLabel", { fg = c.LightBlue, bg = c.none })
	hl(0, "TSKeyword", { fg = c.Pink, bg = c.none })
	hl(0, "TSKeywordFunction", { fg = c.Blue, bg = c.none })
	hl(0, "TSKeywordOperator", { fg = c.Blue, bg = c.none })
	hl(0, "TSOperator", { fg = c.Front, bg = c.none })
  hl(0, "TSDecorator", { fg = c.YellowOrange, bg = c.none})
	hl(0, "TSException", { fg = c.Pink, bg = c.none })
	hl(0, "TSType", { fg = c.BlueGreen, bg = c.none })
  hl(0, "TSEnum", { fg = c.BlueGreen, bg = c.none })
	hl(0, "TSTypeBuiltin", { fg = c.Blue, bg = c.none })
	hl(0, "TSStructure", { fg = c.LightBlue, bg = c.none })
	hl(0, "TSInclude", { fg = c.Pink, bg = c.none })
	hl(0, "TSVariable", { fg = c.LightBlue, bg = c.none })
	hl(0, "TSVariableBuiltin", { fg = c.LightBlue, bg = c.none })
	hl(0, "TSText", { fg = c.Front, bg = c.none })
	hl(0, "TSUnderline", { fg = c.YellowOrange, bg = c.none })
	hl(0, "TSTag", { fg = c.Blue, bg = c.none })
	hl(0, "TSTagDelimiter", { fg = c.Gray, bg = c.none })

	hl(0, "TSTitle", { fg = c.Blue, bold = true })
	hl(0, "TSLiteral", { fg = c.Front, bg = c.none })
	hl(0, "markdownTSLiteral", { fg = c.Orange, bg = c.none })
	hl(0, "markdown_inlineTSLiteral", { fg = c.Orange, bg = c.none })
	hl(0, "TSEmphasis", { fg = c.Front, bg = c.none, italic = true })
	hl(0, "TSStrong", { fg = c.Blue, bold = true })
	hl(0, "TSURI", { fg = c.Front, bg = c.none })
	hl(0, "TSTextReference", { fg = c.Orange })
	hl(0, "TSPunctDelimiter", { fg = c.Front, bg = c.none })
	hl(0, "TSStringEscape", { fg = c.Orange, bold = true })

	hl(0, "TSNote", { fg = c.BlueGreen, bg = c.none, bold = true })
	hl(0, "TSWarning", { fg = c.YellowOrange, bg = c.none, bold = true })
	hl(0, "TSDanger", { fg = c.Red, bg = c.none, bold = true })

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
	hl(0, "GitSignsAddLn", { fg = c.Back, bg = c.Green })
	hl(0, "GitSignsChangeLn", { fg = c.Back, bg = c.Yellow })
	hl(0, "GitSignsDeleteLn", { fg = c.Back, bg = c.Red })

	-- IndentBlankLine
	hl(0, "IndentBlanklineContextChar", { fg = "#e5c76b", bg = c.none, nocombine = true })
	hl(0, "IndentBlanklineContextStart", { fg = c.ContextCurrent, bg = c.none, nocombine = true })
	hl(0, "IndentBlanklineChar", { fg = c.Context, bg = c.none, nocombine = true })
	hl(0, "IndentBlanklineSpaceChar", { fg = c.Context, bg = c.none, nocombine = true })
	hl(0, "IndentBlanklineSpaceCharBlankline", { fg = c.Context, bg = c.none, nocombine = true })

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
	hl(0, "CmpItemAbbrMatch", { fg = u.darken(c.SearchY, 0.6), bg = c.none, bold = true })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = u.darken(c.SearchY, 0.6), bg = c.none, bold = true })
	hl(0, "CompeDocumentation", { link = "Pmenu" })
	hl(0, "CompeDocumentationBorder", { link = "Pmenu" })
	hl(0, "CmpItemKind", { link = "Pmenu" })
	hl(0, "CmpItemKindClass", { link = "CmpItemKindConstructor" })
	hl(0, "CmpItemKindModule", { link = "CmpItemKindKeyword" })
	hl(0, "CmpItemKindOperator", { link = "TSOperator" })
	hl(0, "CmpItemKindReference", { link = "TSParameterReference" })
	hl(0, "CmpItemKindValue", { link = "TSField" })
	hl(0, "CmpItemKindField", { link = "TSField" })
	hl(0, "CmpItemKindEnum", { link = "TSField" })
	hl(0, "CmpItemKindSnippet", { link = "TSText" })
	hl(0, "CmpItemKindColor", { link = "cssColor" })
	hl(0, "CmpItemKindFile", { link = "TSURI" })
	hl(0, "CmpItemKindFolder", { link = "TSURI" })
	hl(0, "CmpItemKindEvent", { link = "TSConstant" })
	hl(0, "CmpItemKindEnumMember", { link = "TSField" })
	hl(0, "CmpItemKindConstant", { link = "TSConstant" })
	hl(0, "CmpItemKindStruct", { link = "TSStructure" })
	hl(0, "CmpItemKindTypeParameter", { link = "TSParameter" })

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

	hl(0, "TelescopeBorder", { fg = c.TabCurrent, bg = c.TabCurrent })
	hl(0, "TelescopePromptBorder", { fg = c.TabCurrent, bg = c.TabCurrent })
	hl(0, "TelescopePromptNormal", { fg = c.none, bg = c.TabCurrent })
	hl(0, "TelescopeResultsBorder", { fg = c.TabCurrent, bg = c.TabCurrent })
	hl(0, "TelescopePreviewBorder", { fg = "#1e2127", bg = "#1e2127" })
	hl(0, "TelescopePreviewTitle", { fg = c.Front, bg = c.Green })
	hl(0, "TelescopePromptTitle", { fg = c.Back, bg = c.Red })
	hl(0, "TelescopeResultsTitle", { fg = c.Front, bg = c.info })
	hl(0, "TelescopeNormal", { fg = c.none, bg = c.TabCurrent })
	hl(0, "TelescopeSelection", { fg = c.Front, bg = c.PopupHighlightBlue })
	hl(0, "TelescopeMultiSelection", { fg = c.Front, bg = c.PopupHighlightBlue })
	hl(0, "TelescopeMatching", { fg = c.MediumBlue, bg = c.none, bold = true })
	hl(0, "TelescopePromptPrefix", { fg = c.warning, bg = c.TabCurrent })
	hl(0, "TelescopePreviewNormal", { fg = c.none, bg = "#1e2127" })
	hl(0, "TelescopePromptCounter", { fg = c.warning, bg = c.TabCurrent })

	-- symbols-outline
	-- white fg and lualine blue bg
	hl(0, "FocusedSymbol", { fg = "#ffffff", bg = c.UiBlue })
	hl(0, "SymbolsOutlineConnector", { fg = c.LineNumber, bg = c.none })
	hl(0, "diffAdded", { link = "DiffAdd" })
	hl(0, "diffChanged", { link = "DiffChange" })
	hl(0, "diffRemoved", { link = "DiffDelete" })

	hl(0, "DiagnosticError", { fg = c.error }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticWarn", { fg = c.warning }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticInfo", { fg = c.info }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticHint", { fg = c.hint }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default

	hl(0, "DiagnosticVirtualTextError", { bg = u.darken(c.error, 0.4), fg = c.error }) -- Used for "Error" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextWarn", { bg = u.darken(c.warning, 0.4), fg = c.warning }) -- Used for "Warning" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextInfo", { bg = u.darken(c.info, 0.4), fg = c.info }) -- Used for "Information" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextHint", { bg = u.darken(c.hint, 0.4), fg = c.hint }) -- Used for "Hint" diagnostic virtual text

	hl(0, "DiagnosticUnderlineError", { bg = u.darken(c.error, 0.3), sp = c.error }) -- Used to underline "Error" diagnostics
	hl(0, "DiagnosticUnderlineWarn", { bg = u.darken(c.warning, 0.3), sp = c.warning }) -- Used to underline "Warning" diagnostics
	hl(0, "DiagnosticUnderlineInfo", { bg = u.darken(c.info, 0.3), sp = c.info }) -- Used to underline "Information" diagnostics
	hl(0, "DiagnosticUnderlineHint", { bg = u.darken(c.hint, 0.3), sp = c.hint }) -- Used to underline "Hint" diagnostics

	-- Semantic token highlights
	-- hl(0, "LspNamespace", { link = "TSNamespace" })
	-- hl(0, "LspModule", { link = "TSType" })
	-- hl(0, "LspType", { link = "TSType" })
	-- hl(0, "LspClass", { link = "TSType" })
	-- hl(0, "LspEnum", { link = "TSEnum" })
	-- hl(0, "LspInterface", { link = "TSInterface" })
	-- hl(0, "LspStruct", { link = "TSStruct" })
	-- hl(0, "LspTypeParameter", { link = "TSParameter" })
	-- hl(0, "LspParameter", { link = "TSParameter" })
	-- -- hl(0, "LspVariable", { link = "TSVariable" })
	-- hl(0, "LspProperty", { link = "TSProperty" })
	-- hl(0, "LspEnumMember", { link = "TSEnumMember" })
	-- hl(0, "LspEvent", { link = "TSEvent" })
	-- hl(0, "LspFunction", { link = "TSFunction" })
	-- hl(0, "LspMethod", { link = "TSMethod" })
	-- hl(0, "LspMacro", { link = "Special" })
	-- hl(0, "LspKeyword", { link = "TSKeyword" })
	-- hl(0, "LspModifier", { link = "TSModifier" })
	-- hl(0, "LspComment", { link = "TSComment" })
	-- hl(0, "LspString", { link = "TSString" })
	-- hl(0, "LspNumber", { link = "TSNumber" })
	-- hl(0, "LspBoolean", { link = "TSBoolean" })
	-- hl(0, "LspRegexp", { link = "TSStringRegex" })
	-- hl(0, "LspOperator", { link = "TSOperator" })
	-- hl(0, "LspDecorator", { link = "TSSymbol" })
	-- hl(0, "LspDeprecated", { link = "TSStrike" })

	hl(0, "@namespace", { link = "TSNamespace" })
	hl(0, "@module", { link = "TSType" })
	-- hl(0, "@type", { link = "TSType" })
	hl(0, "@class", { link = "TSType" })
	-- hl(0, "@enum", { link = "TSEnum" })
	-- hl(0, "@interface", { link = "TSInterface" })
	-- hl(0, "@struct", { link = "TSStruct" })
	-- hl(0, "@typeParameter", { link = "TSParameter" })
	hl(0, "@parameter", { link = "TSParameter" })
	-- hl(0, "@variable", { link = "TSVariable" })
	-- hl(0, "@property", { link = "TSProperty" })
	-- hl(0, "@enumMember", { link = "TSEnumMember" })
	-- hl(0, "@event", { link = "TSEvent" })
	-- hl(0, "@function", { link = "TSFunction" })
	-- hl(0, "@method", { link = "TSMethod" })
	-- hl(0, "@macro", { link = "Special" })
	-- hl(0, "@keyword", { link = "TSKeyword" })
	-- hl(0, "@modifier", { link = "TSModifier" })
	-- hl(0, "@comment", { link = "TSComment" })
	-- hl(0, "@string", { link = "TSString" })
	-- hl(0, "@number", { link = "TSNumber" })
	-- hl(0, "@boolean", { link = "TSBoolean" })
	-- hl(0, "@regexp", { link = "TSStringRegex" })
	-- hl(0, "@operator", { link = "TSOperator" })
	-- hl(0, "@decorator", { link = "TSDecorator" })
	-- hl(0, "@deprecated", { link = "TSStrike" })
	hl(0, "@selfParameter", { link = "TSKeyword" })
	hl(0, "@builtinConstant", { link = "TSParameter" })
  hl(0, "@constant", { link = "TSParameter" })


	-- LspInlayHint
	hl(0, "LspInlayHint", { fg = "#4f723f" })

	-- DapUI
	hl(0, "DapUIVariable", { fg = c.Pink })
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
	hl(0, "NeoTreeNormal", { bg = u.darken(c.Back, 0.95) })
	hl(0, "NeoTreeNormalNC", { bg = u.darken(c.Back, 0.95) })
	hl(0, "NeoTreeGitUntracked", { fg = c.Green })
	-- hl(0, "NeoTreeNormal", { bg = c.Back})
	-- hl(0, "NeoTreeNormalNC", { bg = c.Back})

	hl(0, "NeoTreeWinSeparator", { fg = c.Back })
	hl(0, "NeoTreeRootName", { bold = true })
	hl(0, "NeoTreeIndentMarker", { fg = "#333333" })

	-- Fidget
	hl(0, "FidgetTitle", { fg = "#ffffff" })
	hl(0, "FidgetTask", { fg = "#ffffff" })

	hl(0, "HopNextKey", { fg = c.warning })
	hl(0, "HopNextKey1", { fg = c.info })
	hl(0, "HopNextKey2", { fg = c.Back })

  -- Give window borders a "portal" feel
  hl(0, "PortalBorder", { fg = "#fab387" })
  hl(0, "PortalBorderNone", { fg = "#89b4fa" })

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
