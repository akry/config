:syntax on
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set encoding=utf-8
set hlsearch
scriptencoding utf-8
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
