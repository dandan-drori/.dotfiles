"Configure vimspector
" define function to allow maximizing a certain window using a plugin
fun GotoWindow(id)
  call win_gotoid(a:id)
  MaximizerToggle
endfun

" set mappings to human even tho they are also mapped to different keys bellow
let g:vimspector_enable_mappings = 'HUMAN'
" add vimspector when vim is opened
" packadd! vimspector
" launch vimspector
nnoremap <leader>dd :call vimspector#Launch()<CR>
" commands to go to different windows of the debugger
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tabpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
" quit vimspector
nnoremap <leader>de :call vimspector#Reset()<CR>
" delete a watched expression in the watches
nnoremap <leader>ddw :call vimspector#DeleteWatch()<CR>

nnoremap <leader>dclb :call vimspector#CleanLineBreakpoint()<CR>

" map all of the movements in the debugger
nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>
nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dtb <Plug>VimspectorToggleBreakpoint
nmap <leader>dtcb <Plug>VimspectorToggleConditionalBreakpoint
