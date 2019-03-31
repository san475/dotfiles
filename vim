set nocompatible    "sets vim defaults

set encoding=utf-8  "unicode

set number  "line numbers
set relativenumber  "relative line numbers

filetype on "detect file type
filetype indent on
"im not sure if does anything filetype plugin indent on
syntax on
"colorscheme delek 

set tabstop=4
set shiftwidth=4
set noexpandtab

set ai

"adds filename to status line
set laststatus=2
set statusline+=%F

"turn off esc keys to remove delay in O
set noesckeys



"key binds

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

inoremap {	{}<left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{	{
inoremap {}	{}

"inoremap [	[]<left>
"inoremap [<CR>  [<CR>]<Esc>O
"inoremap [[	[
"inoremap []	[]
"
"inoremap (	()<left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap ((	(
"inoremap ()	()

"aliases
iab makemeafile ##<CR>#autocreated makefile<CR>TARGET: DEPENDENCY<CR>javac TARGET<CR><CR>#<CR><BS>clean:<CR>rm -f TARGET<CR><BS>#<CR>#
