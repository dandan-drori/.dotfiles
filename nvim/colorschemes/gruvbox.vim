" Use Gruvbox color-scheme by default
autocmd BufWinEnter * colorscheme gruvbox

" contrast hard instead of the default medium
" let g:gruvbox_contrast_dark = 'hard'

" if exists('+termguicolors')
" 	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum
" 	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum
" endif

" avoid invert selection
let g:gruvbox_invert_selection = '0'

" use dark color theme
set background=dark
