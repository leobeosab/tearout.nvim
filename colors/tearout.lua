--
-- ███████████                                                   █████   
--░█░░░███░░░█                                                  ░░███    
--░   ░███  ░   ██████   ██████   ████████   ██████  █████ ████ ███████  
--    ░███     ███░░███ ░░░░░███ ░░███░░███ ███░░███░░███ ░███ ░░░███░   
--    ░███    ░███████   ███████  ░███ ░░░ ░███ ░███ ░███ ░███   ░███    
--    ░███    ░███░░░   ███░░███  ░███     ░███ ░███ ░███ ░███   ░███ ███
--    █████   ░░██████ ░░████████ █████    ░░██████  ░░████████  ░░█████ 
--   ░░░░░     ░░░░░░   ░░░░░░░░ ░░░░░      ░░░░░░    ░░░░░░░░    ░░░░░  
--
--  ________________________________________________
-- ||[][][][][][][][][][]_|_|__...-'''''''''''''''''|
-- ||_____....------'''''       -.                  |
--                               |                  |
--                               '^^^^^^^^^^^^^^^^^^'
-- Something about sharpening tools
-- https://github.com/leobeosab/tearout.nvim

local colors = {
Normal = {fg = "#F4D2AE", bg = "#34392D"},
FloatTitle = {link = "Normal"},
Constant = {fg = "#97976D"},
CursorColumn = {bg = "#2C3126"},
CursorLine = {link = "CursorColumn"},
DiagnosticError = {fg = "#FF9452"},
DiagnosticHint = {fg = "#B5955E"},
DiagnosticInfo = {fg = "#F4D2AE"},
DiagnosticOk = {fg = "#97976D"},
DiagnosticWarn = {fg = "#C9A654"},
DiffAdd = {fg = "#24281F", bg = "#6C9861"},
Directory = {fg = "#C9A654"},
Error = {fg = "#FF9452"},
ErrorMsg = {fg = "#FF9452"},
FloatBorder = {bg = "#34392D"},
Folded = {fg = "#EDB478", bg = "#2C3126"},
Function = {fg = "#CC967B"},
Identifier = {fg = "#F4D2AE"},
LineNr = {fg = "#97976D", bg = "#2C3126"},
MarkviewCode = {bg = "#24281F"},
MarkviewPalette1 = {fg = "#F4D2AE", bg = "#24281F"},
MarkviewPalette2 = {fg = "#F4D2AE", bg = "#675642"},
MarkviewPalette3 = {fg = "#675642", bg = "#B5955E"},
MarkviewPalette4 = {fg = "#675642", bg = "#B5955E"},
MarkviewPalette5 = {fg = "#675642", bg = "#B5955E"},
MarkviewPalette6 = {fg = "#675642", bg = "#B5955E"},
MatchParen = {fg = "#C9A654", bg = "#24281F"},
NormalFloat = {fg = "#F4D2AE", bg = "#2C3126"},
PreProc = {fg = "#675642"},
Question = {},
Search = {fg = "#675642", bg = "#CC967B"},
Special = {fg = "#C9A654"},
Statement = {fg = "#B5955E"},
String = {fg = "#6C9861"},
TelescopeBorder = {fg = "#F4D2AE"},
TelescopePreviewBorder = {link = "TelescopeBorder"},
TelescopePromptCounter = {link = "TelescopeBorder"},
TelescopeResultsBorder = {link = "TelescopeBorder"},
TelescopePromptBorder = {fg = "#B5955E", bg = "#2C3126"},
TelescopeSelectionCaret = {fg = "#B5955E", bg = "#24281F"},
TelescopeTitle = {fg = "#B5955E"},
TelescopePreviewTitle = {link = "TelescopeTitle"},
TelescopePromptPrefix = {link = "TelescopeTitle"},
TelescopePromptTitle = {link = "TelescopeTitle"},
TelescopeResultsTitle = {link = "TelescopeTitle"},
Title = {bold = true},
Todo = {fg = "#6C9861"},
Type = {fg = "#97976D"},
VertSplit = {fg = "#F4D2AE", bg = "#24281F"},
Visual = {fg = "#34392D", bg = "#C9A654"},
WhichKey = {bg = "#2C3126"},
WhichKeyBorder = {bg = "#2C3126"},
WhichKeyDesc = {fg = "#CC967B", bg = "#2C3126"},
WhichKeyFloat = {bg = "#2C3126"},
WhichKeyGroup = {bg = "#2C3126"},
WhichKeySeparator = {fg = "#C9A654", bg = "#2C3126"},
Whitespace = {fg = "#675642"},
WinBar = {fg = "#97976D", bg = "#24281F"},
WinBarNC = {fg = "#FF9452", bg = "#2C3126"},
WinSeparator = {fg = "#2C3126", bg = "#24281F"},
["@comment"] = {fg = "#8D8D77"},
["@conditional"] = {fg = "#C9A654"},
["@exception"] = {fg = "#FF9452"},
["@text.todo"] = {fg = "#6C9861"},
["@variable"] = {fg = "#F4D2AE"},
}

vim.cmd("highlight clear")
vim.cmd("set background=dark")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='tearout'")
vim.cmd("let colors_name='tearout'")

for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
