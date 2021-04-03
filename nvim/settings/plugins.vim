call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'                                          " colorscheme gruvbox
Plug 'dikiaap/minimalist'                                       " colorscheme minimalist
Plug 'neoclide/coc.nvim', {'branch': 'release'}                 " CoC - auto complete tool
Plug 'vim-syntastic/syntastic'                                  " show error messages and highlight lines with errors
Plug 'tpope/vim-fugitive'                                       " add support for git in nvim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " fzf plugin to finds files more efficiently:
Plug 'junegunn/fzf.vim'                                         " fzf for vim
Plug 'puremourning/vimspector', { 'do': '~/.config/nvim/plugged/vimspector/install_gadget.py --all' } " vimspector plugin for debugging
Plug 'tpope/vim-surround'                                       " add/delete/change surrounding delimiters
Plug 'vim-airline/vim-airline'                                  " airline - statusline
Plug 'vim-airline/vim-airline-themes'                           " themes for airline's status line
Plug 'dbeniamine/cheat.sh-vim'                                  " integrate cheat.sh in vim
Plug 'jremmen/vim-ripgrep'                                      " vim-ripgrep to search within vim for strings in files
Plug 'mattn/emmet-vim'                                          " emmet for vim type: div,, to get <div></div>
Plug 'markonm/traces.vim'                                       " visualizing regex matching
Plug 'tpope/vim-commentary'                                     " commentary to comment lines easily
Plug 'lilydjwg/colorizer'                                       " color hex colors in css
Plug 'jiangmiao/auto-pairs'                                     " wisely add pairs to ([{'` etc.
Plug 'voldikss/vim-floaterm'                                    " open terminal in a floating window
Plug 'airblade/vim-rooter'                                      " vim-rooter - allow fzf to search in project's view (.git)
Plug 'kevinhwang91/rnvimr'                                      " file explorer - supercharged
Plug 'frazrepo/vim-rainbow'                                     " color parentheses pairs
Plug 'michaeljsmith/vim-indent-object'                          " select text based on indentation
Plug 'kana/vim-textobj-user'                                    " enable for custom text objects
Plug 'kana/vim-textobj-entire'                                  " add text object - entire buffer
Plug 'kana/vim-textobj-line'                                    " add text object - line
Plug 'liuchengxu/vim-which-key'                                 " suggest leader key bindings
Plug 'tpope/vim-repeat'                                         " apply the '.' to other plugins like surround.vim
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'             " snippets and custom snippets
Plug 'glts/vim-magnum'                                          " dependency for vim-radical
Plug 'glts/vim-radical'                                         " base convertions
Plug 'kristijanhusak/vim-js-file-import', { 'do': 'npm install' } " exposes a way of importing file and packages
Plug 'hail2u/vim-css3-syntax'                                   " add css3 syntax for highlight
Plug 'styled-components/vim-styled-components'                  " add syntax highlight to styled components
Plug 'sheerun/vim-polyglot'                                     " polyglot - syntax highlight for JSX and JS
Plug 'Ivo-Donchev/vim-react-goto-definition'                    " support gd in react
Plug 'teneighty/vim-ant'                                        " ant-apache for java
Plug 'rbgrouleff/bclose.vim'                                    " closing a buffer without closing vim
Plug 'bronson/vim-trailing-whitespace'                          " highlight trailing whitespaces
Plug 'AndrewRadev/tagalong.vim'                                 " auto rename html tags
" vim-test/vim-test - wrapper for tests like jest
call plug#end()
