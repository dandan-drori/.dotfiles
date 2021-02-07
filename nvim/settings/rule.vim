" set rules
" add line numbers relative to current line
set number relativenumber
" add Syntax Highlighting
syntax on
" dont wrap text at edge of screen to a new line
set nowrap
" color column for 120 characters - commented out because of highlighting feature bellow 
" set cc=120
" highlight characters that pass 120 characters in width
match ErrorMsg '\%>120v.\+'
" set tabs to 4 spaces instead of 2
set tabstop=4
" indent next line the same way as the previous line
set autoindent
" let vim try to indent for you
set autoindent
" use dark color theme
set background=dark
" highlight search matches
set nohlsearch
" highlight while searching
set incsearch
" disable sound on errors
set visualbell
" disable word wrapping
set linebreak
" disable error sounds
set noerrorbells
" disable swap files for .vim
set noswapfile
" dont need no backup
set nobackup
" change cursor to square from line
set guicursor=
" enable parenthesis for all filetypes
let g:rainbow_active = 1
" set highlight for ripgrep
let g:rg_highlight = 1
" set maximum lines of file to include colorizer
let g:colorizer_maxlines = 1000
" set transparent background
autocmd BufWinEnter * hi Normal guibg=NONE ctermbg=NONE
autocmd BufWinEnter * hi EndOfBuffer guibg=NONE ctermbg=NONE
