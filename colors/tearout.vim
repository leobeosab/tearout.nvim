"
" ███████████                                                   █████   
"░█░░░███░░░█                                                  ░░███    
"░   ░███  ░   ██████   ██████   ████████   ██████  █████ ████ ███████  
"    ░███     ███░░███ ░░░░░███ ░░███░░███ ███░░███░░███ ░███ ░░░███░   
"    ░███    ░███████   ███████  ░███ ░░░ ░███ ░███ ░███ ░███   ░███    
"    ░███    ░███░░░   ███░░███  ░███     ░███ ░███ ░███ ░███   ░███ ███
"    █████   ░░██████ ░░████████ █████    ░░██████  ░░████████  ░░█████ 
"   ░░░░░     ░░░░░░   ░░░░░░░░ ░░░░░      ░░░░░░    ░░░░░░░░    ░░░░░  
"
"  ________________________________________________
" ||[][][][][][][][][][]_|_|__...-'''''''''''''''''|
" ||_____....------'''''       -.                  |
"                               |                  |
"                               '^^^^^^^^^^^^^^^^^^'
" Something about sharpening tools
" https://github.com/leobeosab/tearout.nvim

set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="tearout"
let g:colors_name="tearout"

hi @comment guifg=#8D8D77 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi @conditional guifg=#C9A654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Constant guifg=#97976D guibg=NONE guisp=NONE blend=NONE gui=NONE
hi CursorColumn guifg=NONE guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi DiagnosticError guifg=#FF9452 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticHint guifg=#B5955E guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticInfo guifg=#F4D2AE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticOk guifg=#97976D guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticWarn guifg=#C9A654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiffAdd guifg=#24281F guibg=#6C9861 guisp=NONE blend=NONE gui=NONE
hi Directory guifg=#C9A654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Error guifg=#FF9452 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ErrorMsg guifg=#FF9452 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi @exception guifg=#FF9452 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi FloatBorder guifg=NONE guibg=#34392D guisp=NONE blend=NONE gui=NONE
hi Folded guifg=#EDB478 guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi Function guifg=#CC967B guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Identifier guifg=#F4D2AE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LineNr guifg=#97976D guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi! link CursorLine CursorColumn
hi! link FloatTitle Normal
hi! link TelescopePreviewBorder TelescopeBorder
hi! link TelescopePreviewTitle TelescopeTitle
hi! link TelescopePromptCounter TelescopeBorder
hi! link TelescopePromptPrefix TelescopeTitle
hi! link TelescopePromptTitle TelescopeTitle
hi! link TelescopeResultsBorder TelescopeBorder
hi! link TelescopeResultsTitle TelescopeTitle
hi MarkviewCode guifg=NONE guibg=#24281F guisp=NONE blend=NONE gui=NONE
hi MarkviewPalette1 guifg=#F4D2AE guibg=#24281F guisp=NONE blend=NONE gui=NONE
hi MarkviewPalette2 guifg=#F4D2AE guibg=#675642 guisp=NONE blend=NONE gui=NONE
hi MarkviewPalette3 guifg=#675642 guibg=#B5955E guisp=NONE blend=NONE gui=NONE
hi MarkviewPalette4 guifg=#675642 guibg=#B5955E guisp=NONE blend=NONE gui=NONE
hi MarkviewPalette5 guifg=#675642 guibg=#B5955E guisp=NONE blend=NONE gui=NONE
hi MarkviewPalette6 guifg=#675642 guibg=#B5955E guisp=NONE blend=NONE gui=NONE
hi MatchParen guifg=#C9A654 guibg=#24281F guisp=NONE blend=NONE gui=NONE
hi NormalFloat guifg=#F4D2AE guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi Normal guifg=#F4D2AE guibg=#34392D guisp=NONE blend=NONE gui=NONE
hi PreProc guifg=#675642 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Question guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Search guifg=#675642 guibg=#CC967B guisp=NONE blend=NONE gui=NONE
hi Special guifg=#C9A654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Statement guifg=#B5955E guibg=NONE guisp=NONE blend=NONE gui=NONE
hi String guifg=#6C9861 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeBorder guifg=#F4D2AE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePromptBorder guifg=#B5955E guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi TelescopeSelectionCaret guifg=#B5955E guibg=#24281F guisp=NONE blend=NONE gui=NONE
hi TelescopeTitle guifg=#B5955E guibg=NONE guisp=NONE blend=NONE gui=NONE
hi @text.todo guifg=#6C9861 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Title guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi Todo guifg=#6C9861 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Type guifg=#97976D guibg=NONE guisp=NONE blend=NONE gui=NONE
hi @variable guifg=#F4D2AE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi VertSplit guifg=#F4D2AE guibg=#24281F guisp=NONE blend=NONE gui=NONE
hi Visual guifg=#34392D guibg=#C9A654 guisp=NONE blend=NONE gui=NONE
hi WhichKeyBorder guifg=NONE guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi WhichKeyDesc guifg=#CC967B guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi WhichKeyFloat guifg=NONE guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi WhichKeyGroup guifg=NONE guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi WhichKey guifg=NONE guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi WhichKeySeparator guifg=#C9A654 guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi Whitespace guifg=#675642 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi WinBar guifg=#97976D guibg=#24281F guisp=NONE blend=NONE gui=NONE
hi WinBarNC guifg=#FF9452 guibg=#2C3126 guisp=NONE blend=NONE gui=NONE
hi WinSeparator guifg=#2C3126 guibg=#24281F guisp=NONE blend=NONE gui=NONE
