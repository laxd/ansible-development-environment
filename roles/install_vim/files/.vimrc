""""""""""""""""""
" GENERAL SETTINGS 
""""""""""""""""""
" Set line number for current line
set number

" Set relative line numbers for all other lines
set relativenumber

" Be iMproved
set nocompatible

" Syntax checking etc
syntax on

" Map w!! to force save (i.e. opened without sudo)
cmap w!! w !sudo tee > /dev/null %

" Remove highlighting with enter
nnoremap <CR> :noh<CR><CR>:<BACKSPACE>

" Allow incremental, highlighted search
set incsearch
set hlsearch

""""""""""""""""""
" SPLITS SETTINGS
""""""""""""""""""

" Allow using ctrl-[hjkl] to travel between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new splits below/to the right of current pane
set splitbelow
set splitright

""""""""""""""""""
" TAB SETTINGS
""""""""""""""""""

set expandtab
set shiftwidth=4
set tabstop=4

""""""""""""""""""
" PLUGIN SETTINGS
""""""""""""""""""

" Required for Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'rustushki/JavaImp.vim'
Plugin 'davidhalter/jedi-vim'
call vundle#end()

filetype plugin indent on

""""""""""""""""""
" NETRW SETTINGS
""""""""""""""""""

" Remove banner
let g:netwr_banner = 0
" Set netrw size to 25%
let g:netrw_winsize = 25
" Vertical split on choosing file
let g:netrw_browse_split = 2

" Map Ctrl+n to open netrw window
map <C-n> :Explore<CR>

""""""""""""""""""
" JAVAIMP SETTINGS
""""""""""""""""""

let g:JavaImpPaths = 
	\ "$HOME/.m2/repositories," .
	\ "$HOME/.gradle/caches/modules-2/files-2.1"
