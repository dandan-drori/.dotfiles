" lists
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Project Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" bookmarks
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'p': '~/Projects' },
            \ { 'h': '~/IntroToComputerScience/SecondSemester/Homework' },
            \ { 'c': '~/.config/nvim'},
            \ ]

let g:startify_custom_header = [
        \ ' _   _      _ _         ____                  _             ',
        \ '| | | | ___| | | ___   |  _ \  __ _ _ __   __| | __ _ _ __  ',
        \ '| |_| |/ _ \ | |/ _ \  | | | |/ _` | `_ \ / _` |/ _` | `_ \ ',
        \ '|  _  |  __/ | | (_) | | |_| | (_| | | | | (_| | (_| | | | |',
        \ '|_| |_|\___|_|_|\___/  |____/ \__,_|_| |_|\__,_|\__,_|_| |_|',
        \ ]

" let the version control system (git) be the root of the project
let g:startify_change_to_vcs_root = 1
" allow unicode and not just english
let g:startify_fortune_use_unicode = 1
" get rid of empty buffers and quit
let g:startify_enable_special = 0
