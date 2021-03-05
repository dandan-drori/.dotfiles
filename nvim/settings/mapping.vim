" set leader for commands
let mapleader=" "

" map :FZF (Fuzzy Finder) to Ctrl + P
nmap <C-P> :FZF<CR>
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

" move groups of text vertically
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+2<CR>gv-gv

" disable arrow keys
" nnoremap <Up> <Nop>
" nnoremap <Down> <Nop>
" nnoremap <Left> <Nop>
" nnoremap <Right> <Nop>
" inoremap <Up> <Nop>
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>

" disable esc in insert mode
inoremap <Esc> <Nop>

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
nnoremap <C-c> <Esc>
inoremap kj <Esc>

" toggle float-term
nnoremap <c-t> :FloatermToggle<CR>

" git integration with git-fugitive
" in the git status buffer, use <s> to stage a file,
" <u> to unstage a file and <cc> to commit all changes
" use <dv> to view diff of merge in vertical split
nmap <leader>gs :G<CR>
nmap <leader>gp :Git push<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

" local buffer renaming with coc
nmap <leader>R <Plug>(coc-rename)

" insert space
nnoremap <leader><space> i <C-c>

" format text with special style
nmap <leader>B :.!toilet -w 200 -f term -F border<CR>
nmap <leader>H :.!toilet -w 200 -f standard<CR>

" MARKDOWN + PDF

" convertion from markdown to pdf using pandoc
map <leader>C :w! \| !~/bin/md2pdf.py <c-r>%<CR><CR>
" open the correct pdf for the currently open md file
map <leader>O :!~/bin/opdf.py <c-r>%<CR>
" delete the correct pdf for the currently open md file
map <leader>D :!~/bin/mdDelete.py <c-r>%<CR>
" open buffer for note taking
map <leader>N :!~/bin/noteTaking.sh \| nvim /home/dandan/.notes/src/note-<C-R>=expand(@a).'.md'<CR>

" navigating buffers like tabs with airline's tabline extension
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>

" CUSTOM COMMANDS

" reload init.vim
command! Reload execute "source ~/.config/nvim/init.vim"

" reload syntax highlighting
nnoremap <F12> :syn off \| syn on<CR>

" execute bash command under cursor
nnoremap <leader>e !!sh<CR>

" copy to system clipboard
vnoremap <leader>c "*Y :let @+=@*<CR>

" paste from system clipboard
map <leader>p "+p

" FILETYPE SPECIFIC MAPPINGS

" add all function declarations to the top part of the file (in .c)
" regex functinallity - find any line that starts with anything but space, then a space,
" anything, openening parenthesis, anything, closing parenthesis, space, and
" ends with opening curly braces. then, substitute the space and opening
" curly braces at the end of the line with a semi-colon.
autocmd FileType c nnoremap <leader>fd :g/^\S\+\s.*\(.*\)\s{$/t0 \| s/\s{$/;<CR><CR>
" create a styled tag out of the tag under cursor
autocmd FileType javascript map <leader>S :norm Goconst <c-r><c-w> = styled.div`<CR>a<CR><Tab>
