set number relativenumber                                       " add line numbers relative to current line
syntax on                                                       " add Syntax Highlighting
set nowrap                                                      " dont wrap text at edge of screen to a new line
set cc=120                                                      "color column for 120 characters
match ErrorMsg '\%>120v.\+'                                     " highlight characters that pass 120 characters in width
set tabstop=8                                                   " set tabs to 4 spaces instead of 2
set autoindent                                                  " indent next line the same way as the previous line
set softtabstop=0                                               " insert both tabs and spaces
set expandtab                                                   " insert spaces instead of tabs
set shiftwidth=4                                                " the size of an indent (in spaces)
set smarttab                                                    " insert spaces and tabs to get to next indent level
set smartindent                                                 " let vim try to indent for you
set nohlsearch                                                  " highlight search matches
set incsearch                                                   " highlight while searching
set visualbell                                                  " disable sound on errors
set linebreak                                                   " disable word wrapping
set noerrorbells                                                " disable error sounds
set noswapfile                                                  " disable swap files for .vim
set nobackup                                                    " dont need no backup
set guicursor=                                                  " change cursor to square from line
set encoding=utf-8                                              " let vim use all characters
let g:rainbow_active = 1                                        " enable parentheses for all filetypes
let g:rg_highlight = 1                                          " set highlight for ripgrep
let g:colorizer_maxlines = 1000                                 " set maximum lines of file to include colorizer
set splitbelow splitright                                       " splits open at the bottom and right
set formatoptions-=cro                                          " Stop newline continuation of comments
" transparent background
autocmd BufWinEnter * hi Normal guibg=NONE ctermbg=NONE
autocmd BufWinEnter * hi EndOfBuffer guibg=NONE ctermbg=NONE
