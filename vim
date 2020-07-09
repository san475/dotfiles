""         _                    
""  __   _(_)_ __ ___  _ __ ___ 
""  \ \ / / | '_ ` _ \| '__/ __|
""   \ V /| | | | | | | | | (__ 
""    \_/ |_|_| |_| |_|_|  \___|
""
"""""""""""""""""""""""""""""""""
"" Author: Francisco Esteve
""
"""""""""""""""""""""
"" Table of Contents
""
"" 			1. Compatibility
"" 			2. Preferences
"" 			3. Syntax
""			4. Colorscheme
"" 			5. Tabs & Indentation
"" 			6. Aliases
"" 			7. Key bindings
""

""""""""""""
"" Plugins

call plug#begin('~/.vim/plugged')
""""""""""""
"" Add Plugin links with Plug <github stuff>
Plug 'tomasiser/vim-code-dark'
"Plug 'tomasiser/vim-code-dark'
"Plug 'tomasiser/vim-code-dark'

call plug#end()


""""""""""""
"" Compatibility
set nocompatible    "sets vim defaults
set encoding=utf-8  "unicode
" Fix delay on 'O'
set noesckeys
"set timeoutlen=100
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	  let col = col('.') - 1
		  return !col || getline('.')[col - 1]  =~# '\s'
		endfunction

""""""""""""
"" Preferences
set hlsearch	"highlight searches
set incsearch	"incremental search
set number  "line numbers
set relativenumber  "relative line numbers
set splitbelow splitright	"set splits to make more sense
set so=7	"move screen when cursor is 7 above or below

hi MatchParen ctermbg=blue guibg=lightblue term=none cterm=none gui=italic

set wildmenu
"set wildmode=longest,list,full	"show possible options on <tab>
set wildignore+=*.o,*~,*.pyc,.git/*
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd

" Removes beeping
set visualbell
set t_vb=


""""""""""""
"" Syntax
filetype indent on	"Detect filetype and indent
syntax on


""""""""""""
"" Colorscheme
"colorscheme peachpuff 
set t_Co=256
"set t_ut=
colorscheme codedark


""""""""""""
"" Tabs & Indentation
set tabstop=2
set shiftwidth=2
set noexpandtab
set smarttab

set autoindent
set smartindent
set wrap


""""""""""""
"" Aliases
iab makemeafile ##<CR>#autocreated makefile<CR>TARGET: DEPENDENCY<CR>javac TARGET<CR><CR>#<CR><BS>clean:<CR>rm -f TARGET<CR><BS>#<CR>#

command Wm :make

""""""""""""
"" Key bindings

"binds gf to open in split
nnoremap gf :vertical wincmd f<CR>

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
