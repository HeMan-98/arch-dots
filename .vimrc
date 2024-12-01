set nocompatible
" vim-plug
call plug#begin()
Plug 'itchyny/lightline.vim'                        " Lightline
Plug 'morhetz/gruvbox'                              " gruvbox
call plug#end()

" Editor
syntax enable                                       " enable syntax highlighting
set title                                           " enable display name for window
set number                                          " enable absolute line numbers
set rnu                                             " enable relative line numbers
set ruler                                           " show current position
set cursorline                                      " show a visual line under the cursor's current line
set cursorcolumn                                    " show a visual line on the cursor's current column
set showmatch                                       " show the matching part of the pair for [] {} and ()
set guifont=Iosevka\ 10                             " setting font
set belloff=all                                     " switch off errorbell
set cmdheight=1                                     " command bar height
set laststatus=2                                    " always show the status line
set hidden                                          " to enable switching from unsaved buffers

" Indentation
set ts=4                                            " set tabs to have 4 spaces
set ai                                              " indent when moving to the next line while writing code
set si                                              " smart indent
set nowrap                                          " disbale wrapping of long lines
filetype plugin indent on                           " indent based on the filetype
set expandtab                                       " expand tabs into spaces
set smarttab                                        " smart usage of tab
set shiftwidth=4                                    " when using the >> or << commands, shift lines by 4 spaces
set bs=2                                            " fixing backspace

" Native Markdown Support Options
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 50

" Setting Leader
let g:mapleader=" "

" Colorscheme
set termguicolors                                   " Conflicts with transparent bg
set background=dark                                 " setting themem to dark
let g:gruvbox_italic=1                              " enabling italics as gruvbox disbles by default
colorscheme gruvbox                                 " setting gruvbox as theme

let g:lightline = { 'colorscheme': 'gruvbox' }   " Lightline colorscheme
