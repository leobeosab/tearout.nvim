#!/usr/bin/env bash
# Credit to @xero on Github, they built the important bits of this script on the miasma theme
# setup shipwright for vim
cat << x0 > ./shipwright_build.lua
local colorscheme = require("lush_theme.tearout")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_vimscript,
  {overwrite, "colors/tearout.vim.tmp"}
)
x0
nvim --headless +Shipwright +qa
# create colorscheme
cat << x0 > ./colors/tearout.vim
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

$(sed 's/^highlight/hi/' ./colors/tearout.vim.tmp | sort)
x0
echo "tearout vim build complete"

# setup shipwright for lua
cat << x0 > ./shipwright_build.lua
local colorscheme = require("lush_theme.tearout")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_lua,
  {patchwrite, "colors/tearout.lua.tmp", "-- PATCH_OPEN", "-- PATCH_CLOSE"})
x0
# create base file
cat << x0 > ./colors/tearout.lua.tmp
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
-- PATCH_OPEN
-- group data will be inserted here
-- PATCH_CLOSE
}

vim.cmd("highlight clear")
vim.cmd("set background=dark")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='tearout'")
vim.cmd("let colors_name='tearout'")

for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
x0

nvim --headless +Shipwright +qa
awk '/-- PATCH/{getline}{print}' ./colors/tearout.lua.tmp > ./colors/tearout.lua
rm ./colors/*.tmp ./shipwright_build.lua
echo "tearout lua build complete"
