"""""""""""""""""""""
"" ~/.vimrc
"" Author: Francisco Esteve
""
"""""""""""""""""""""
""
"" Table of Contents
""
"" 1. Compatibility
"" 2. Preferences
"" 3. Syntax
"" 4. Colorscheme
"" 5. Tabs & Indentation
"" 6. Aliases
"" 7. Key bindings
""

""""""""""""
"" Compatibility
set nocompatible    "sets vim defaults
set encoding=utf-8  "unicode
" Fix delay on 'O'
set noesckeys
"set timeoutlen=100


""""""""""""
"" Preferences
set hlsearch
set number  "line numbers
set relativenumber  "relative line numbers

""""""""""""
"" Syntax
filetype indent on	"Detect filetype and indent
syntax on

""""""""""""
"" Colorscheme
colorscheme peachpuff 

""""""""""""
"" Tabs & Indentation
set tabstop=4
set shiftwidth=4
set noexpandtab

set autoindent
set smartindent



""""""""""""
"" Aliases
iab makemeafile ##<CR>#autocreated makefile<CR>TARGET: DEPENDENCY<CR>javac TARGET<CR><CR>#<CR><BS>clean:<CR>rm -f TARGET<CR><BS>#<CR>#

""""""""""""
"" Key bindings
"simplifies split nav
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"adds auto parenthesis
inoremap {	{}<left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{	{
inoremap {}	{}

"inoremap [	[]<left>
"inoremap [<CR>  [<CR>]<Esc>O
"inoremap [[	[
"inoremap []	[]

"inoremap (	()<left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap ((	(
"inoremap ()	()

"disables arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

