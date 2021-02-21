" set leader for commands
let mapleader=" "

" map :FZF (Fuzzy Finder) to Ctrl + P
nmap <C-P> :FZF<CR>
" add matching closing punchuation  when the first one is added:
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" add closing } 2 lines bellow like a javascript function
inoremap {<CR> {<CR><CR>}<ESC>ki<TAB>
" toggle comment a line
nnoremap <C-_> :Commentary<CR>
" copy line down
nnoremap <A-S-down> yyp
" enter normal mode in terminal window
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

" define functions for swapping lines
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

" map custom functions to shortcuts
nmap <silent> <A-up> :call <SID>swap_up()<CR>
nmap <silent> <A-down> :call <SID>swap_down()<CR>

" disable arrow keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resizing windows - M = Alt
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" alternative way to save
nnoremap <C-s> :w<CR>
" alternative way to quit
nnoremap <C-Q> :wq!<CR>
" alternative way to go to normal mode
nnoremap <C-c> <ESC>

" move groups of text vertically
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+2<CR>gv-gv

" toggle float-term
nnoremap <c-t> :FloatermToggle<CR>

" git integration with git-fugitive
nmap <leader>gs :G<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

" project wide renaming with coc
nnoremap <leader>Prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" local buffer renaming with coc
nmap <leader>R <Plug>(coc-rename)

" format text with special style
nmap <leader>B :.!toilet -w 200 -f term -F border<CR>
nmap <leader>H :.!toilet -w 200 -f standard<CR>

" MARKDOWN

" open markdown instant preview
nnoremap <leader>p :InstantMarkdownPreview<CR>
" close markdown instant preview
nnoremap <leader>ps :InstantMarkdownStop<CR>

" convertion from markdown to pdf using pandoc
map <leader>C :w! \| !~/bin/md2pdf.py <c-r>%<CR><CR>
" open the correct pdf for the currently open md file
map <leader>O :!~/bin/opdf.py <c-r>%<CR>
" delete the correct pdf for the currently open md file 
map <leader>D :!~/bin/mdDelete.py <c-r>%<CR>
