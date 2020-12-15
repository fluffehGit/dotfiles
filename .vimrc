""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings
""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'itchyny/lightline.vim'
    Plugin 'ap/vim-css-color'
    Plugin 'sainnhe/sonokai'
    Plugin 'preservim/nerdtree'

call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256
set path+=**
set fileformat=unix
set wildmenu
set wildignore+=*.jpg,*.png,*.gif,*.bmp,*.ico,*.pdf
set wildignore+=*.tmp,*.swp
set relativenumber
set number
set laststatus=2
set noshowmode
set title
set incsearch
set hlsearch
set nobackup

""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax and filetype
""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

set listchars=eol:¬,tab:>␣,trail:~,extends:>,precedes:<,space:·
set list
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Convet text to UTF-8
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * :call CleanExtraSpaces()

setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8
set encoding=utf-8

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   set encoding=utf-8
autocmd BufNewFile,BufRead  *   endtry
""""""""""""""""""""""""""""""""""""""""""""""""""
" Themeing
""""""""""""""""""""""""""""""""""""""""""""""""""
if has('termguicolors')
  set termguicolors
endif

let g:sonokai_style = 'default'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_transparent_background = 1

colorscheme sonokai

let g:lightline = {'colorscheme': 'sonokai'}
""""""""""""""""""""""""""""""""""""""""""""""""""
" Removing unwanted spaces
""""""""""""""""""""""""""""""""""""""""""""""""""

function! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
