-- This color scheme was made by joshthecomposer
-- repo is available here: https://github.com/joshthecomposer/Nvim-Lua/blob/main/lua/joshua/core/colors.lua
local colors = {
    default_bg = '#041818',
    default_fg = '#d3b58d',
	lighter_bg = '#041c1c',
	lighter_fg = '#e6d5bf',
	darker_bg = '#031313',
	darker_fg = '#bf945a',
    darkseagreen = 'darkseagreen',
	darkgray = 'darkgray',
    gray = 'gray',
    lightgreen = 'lightgreen',
    lightblue = 'lightblue',
	comment_green = '#3fdf1f',
    white = 'white',
    grey = 'grey',
	grey10 = 'grey10',
	sky_gray_blue = '#c8d4ec',
	red = 'red'
}

local function set_highlight(group, color)
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""
	local cmd = string.format("highlight %s %s %s %s", group, fg, bg, sp)
    vim.cmd(cmd)
end


local function apply_my_theme()
	--Modes
	set_highlight("Normal", {fg = colors.default_fg, bg = colors.default_bg})
	set_highlight("NormalFloat", {fg = colors.default_fg, bg = colors.default_bg})
	set_highlight("Visual", {fg = colors.default_bg, bg = colors.default_fg})
	--set_highlight("Visual", {fg = colors.lighter_fg, bg = colors.darker_bg})

	--Actions
	set_highlight("Search", {fg = colors.default_bg, bg = colors.default_fg})
	set_highlight("CurSearch", {fg = colors.lighter_fg, bg = colors.gray})


	--Diagnostic stuff
	set_highlight("DiagnosticError", {fg = "red"})
	set_highlight("Error", {fg = colors.default_fg})
	set_highlight("DiagnosticWarn", {fg = "darkyellow"})
	set_highlight("DiagnosticUnnecessary", {fg = "darkyellow"})
	set_highlight("DiagnosticUnderlineError", {fg = "red"})
	set_highlight("DiagnosticInfo", {fg = colors.default_fg})
	set_highlight("DiagnosticHint", {fg = colors.default_fg})
	set_highlight("PreProc", {fg = colors.default_fg})
	set_highlight("Title", {fg = colors.darkseagreen})


	--Popup menu
	set_highlight("Pmenu", {fg = colors.default_fg, bg = colors.default_bg})
	set_highlight("PmenuSBar", {fg = colors.default_fg, bg = colors.default_bg})
	set_highlight("PmenuThumb", {fg = colors.default_fg, bg = colors.default_bg})
	set_highlight("PmenuSel", {fg = colors.lighter_fg, bg = colors.lighter_bg})

	--Netrw
	set_highlight("netrwDir", {fg = colors.lighter_fg})
	set_highlight("netrwList", {fg = colors.gray})
	set_highlight("netrwComment", {fg = colors.gray})
	set_highlight("netrwPlain", {fg = colors.gray})
	set_highlight("netrwClassify", {fg = colors.lighter_fg})
	set_highlight("netrwHelpCmd", {fg = colors.gray})
	set_highlight("netrwCmdNote", {fg = colors.gray})
	set_highlight("netrwSpecial", {fg = colors.gray})
	set_highlight("netrwCmdSep", {fg = colors.gray})
	set_highlight("netrwSymLink", {fg = colors.gray})
	set_highlight("Question", {fg = colors.gray})
	set_highlight("netrwQuickHelp", {fg = colors.gray})

	--Cursor stuff
	set_highlight("Cursor", {fg = colors.default_bg, bg = colors.default_fg})
	set_highlight("CursorLine", {fg = colors.lighter_fg, bg = colors.lighter_bg})

	--Left column/line nr
	set_highlight("SignColumn", {fg = colors.default_fg})
	set_highlight("LineNr", {fg = colors.grey})
	set_highlight("EndOfBuffer", {fg = colors.default_fg, bg = colors.default_bg})

	--Variables, syntax, values
	set_highlight("String", {fg = "lightseagreen"})
	set_highlight("Keyword", {fg = colors.lightblue})
	set_highlight("Structure",{fg = colors.default_fg})
	set_highlight("Class", {fg = colors.default_fg})
	set_highlight("Constant", {fg = colors.default_fg})
	set_highlight("Number", {fg = "lightseagreen"})
	set_highlight("Identifier", {fg = colors.default_fg})
	set_highlight("Statement", {fg = colors.default_fg})
	set_highlight("Comment", {fg = "darkgreen"})
	set_highlight("Boolean", {fg = colors.default_fg})
	set_highlight("Type", {fg = colors.darkseagreen})
	set_highlight("Delimiter", {fg = colors.default_fg})
	set_highlight("Macro", {fg = colors.default_fg})
	set_highlight("Function", {fg = colors.lightblue})
	set_highlight("Special", {fg = colors.default_fg})
	set_highlight("CmpItemKind", {fg = colors.default_fg})

end

apply_my_theme()


--Set the font
vim.opt.guifont = "JetBrains Mono NL:h16"
