" get rid of Vi compatibility mode. SET FIRST!
set nocompatible          

" filetype detection[ON] plugin[ON] indent[ON]
filetype plugin indent on

" activates indenting for files
filetype indent on

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Show line numbers
set number
set ruler
syntax on

" Highlight the current line
set cursorline

" Set encoding
set encoding=utf-8

" Disable swap files
set noswapfile

" Remember more history
set history=1000
 
" Permanent undo
set undofile
 
" set a directory to store the undo history
set undodir=~/.vim/undo/

" Unfuck my screen
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=4
set softtabstop=2
set expandtab " use spaces instead of tabs
set listchars=tab:▸\ ,eol:¬,trail:·
set autoindent

" Default color scheme
" Set the 256 color mode for terminal
set t_Co=256
colorscheme hybrid

" Disable vi-compatibility
set nocompatible

" Always show the statusline
set laststatus=2

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"Right Column margin indicator
"set cc=80

"No beeping and visual bell
set noeb vb t_vb=

"Shows cmd pressed in normal mode
set showcmd

" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
