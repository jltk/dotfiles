" vim config of jtlk

set encoding=utf-8

syntax on
" enable line numbers
set number
" disable swap file
set noswapfile
" enable cursorline
set cursorline
" enable mouse click
set mouse=a
" tab width
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" word wrap
set wrap linebreak nolist
set breakindent
set autoindent
set smartindent

" whitespace characters
set list listchars=eol:¬,trail:·,tab:•\ ,extends:»,precedes:«

" borders
set fillchars+=vert:│

" colors
hi LineNr ctermfg=black
hi NonText ctermfg=black
hi SpecialKey ctermfg=black
hi CursorLine ctermbg=black cterm=italic
hi MatchParen ctermbg=red ctermfg=black

" keybinds
vnoremap  :w !xclip -sel clip
