--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- Color Definition
local forest = hsl("#34392D")
local maple = hsl("#F4D2AE")
local paduak = hsl("#FF9653")
local walnut = hsl("#CC967B")
local white_oak = hsl("#B5955E")
local dark_walnut = hsl("#685742")
local lush_green = hsl("#6C9861")
local golden_oak = hsl("#c9a554")

local olive = hsl("#97976D")

--testing
local bluething = hsl("#367072")


--groups

local bg = forest
local dark_bg = bg.darken(15)
local extra_dark_bg = dark_bg.darken(15)

local inverse_bg = golden_oak

local fg = maple
local dark_fg = maple.darken(15)

local normal = {fg=maple, bg=forest}

local dbghighlight = {bg=extra_dark_bg, fg=olive}


local error_text = {fg=paduak, bg=normal.bg}

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    CursorColumn   {bg=dark_bg}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     {CursorColumn}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg=golden_oak}, -- Directory names (and other special names in listings)
    DiffAdd        { bg=lush_green, fg=extra_dark_bg}, -- Diff mode: Added line |diff.txt|
    ErrorMsg       { fg=paduak }, -- Error messages on the command line
    VertSplit      {bg=extra_dark_bg, fg=maple}, -- Column separating vertically split windows
    Folded         { bg=dark_bg, fg=dark_fg}, -- Line used for closed folds
    LineNr         { fg=olive, bg=dark_bg}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen     {bg=extra_dark_bg, fg=golden_oak}, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    Normal         { bg=forest, fg=maple }, -- Normal text
    NormalFloat    { Normal, bg=dark_bg}, -- Normal text in floating windows.
    FloatBorder    {bg=bg}, -- Border of floating windows.
    FloatTitle     {Normal}, -- Title of floating windows.
    Question       { }, -- |hit-enter| prompt and yes/no questions
    Search         { bg=walnut,fg=dark_walnut}, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    Visual         { bg=inverse_bg,fg=bg}, -- Visual mode selection
    Whitespace     { fg=dark_walnut }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WinBar         { bg=extra_dark_bg, fg=olive}, -- Window bar of current window
    WinBarNC         { bg=dark_bg, fg=paduak}, -- Window bar of current window
    WinSeparator {bg=extra_dark_bg, fg=dark_bg},

    WhichKey {bg=dark_bg},
    WhichKeySeparator {bg=dark_bg,fg=golden_oak},
    WhichKeyDesc {bg=dark_bg, fg=walnut},
    WhichKeyBorder {bg=dark_bg},
    WhichKeyGroup {bg=dark_bg},
    WhichKeyFloat {bg=dark_bg},

    -- Markview 
    MarkviewCode {bg=extra_dark_bg},
    MarkviewPalette1 {bg=extra_dark_bg, fg=maple},
    MarkviewPalette2 {bg=dark_walnut, fg=maple},
    MarkviewPalette3 {bg=white_oak, fg=dark_walnut},
    MarkviewPalette4 {bg=white_oak, fg=dark_walnut},
    MarkviewPalette5 {bg=white_oak, fg=dark_walnut},
    MarkviewPalette6 {bg=white_oak, fg=dark_walnut},

    Constant       { fg=olive}, -- (*) Any constant
    String         { fg=lush_green}, --   A string constant: "this is a string"

    Identifier     { fg=maple}, -- (*) Any variable name
    Function       { fg=walnut}, --   Function name (also: methods for classes)

    Statement      { fg=white_oak}, -- (*) Any statement

    PreProc        { fg=dark_walnut}, -- (*) Generic Preprocessor

    Type           { fg=olive}, -- (*) int, long, char, etc.
    Special        { fg=golden_oak}, -- (*) Any special symbol
    Error          { fg=paduak}, -- Any erroneous construct
    Todo           { fg=lush_green}, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX


    TelescopeSelectionCaret                    { fg=white_oak, bg=extra_dark_bg, },
    TelescopeBorder                            { fg=maple },
    TelescopePromptCounter                     { TelescopeBorder },
    TelescopeResultsBorder                     { TelescopeBorder },
    TelescopePreviewBorder                     { TelescopeBorder },
    TelescopeTitle                             { fg=white_oak},
    TelescopePromptTitle                       { TelescopeTitle },
    TelescopeResultsTitle                      { TelescopeTitle },
    TelescopePreviewTitle                      { TelescopeTitle },
    TelescopePromptPrefix                      { TelescopeTitle },
    TelescopePromptBorder                      { fg=white_oak, bg=dark_bg, },

    DiagnosticError            { fg=paduak} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg=golden_oak} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg=maple} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg=white_oak} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk             { fg=olive} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)

    sym"@text.todo"         { fg=lush_green}, -- Todo
    sym"@comment"           { fg=olive.desaturate(50)}, -- Comment
    sym"@conditional"       { fg=golden_oak}, -- Conditional
    sym"@exception"         {fg=error_text.fg}, -- Exception
    sym"@variable"          {fg=fg }, -- Identifier


    --
    -- Keeping these commented out so I know what they look like when using Lushify
    --
    -- ColorColumn    { }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    --
    --
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { gui="bold"}, -- Titles for output from ":set all", ":autocmd" etc.
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    --
    --
    -- Common
    -- Comment        { }, -- Any comment
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef
    --
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10
    --
    --
    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    --
    --
    --
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.
    --
    --
    --
    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
