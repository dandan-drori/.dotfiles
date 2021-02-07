call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox' " colorscheme gruvbox
Plug 'tpope/vim-fugitive' " add support for git in nvim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf plugin to finds files more efficiently:
Plug 'junegunn/fzf.vim' " fzf for vim
Plug 'mattn/emmet-vim' " emmet for vim type: div,, to get <div></div>
Plug 'vim-airline/vim-airline' " airline - statusline
Plug 'sheerun/vim-polyglot' " polyglot - syntax highlight for JSX and JS
Plug 'tpope/vim-commentary' " commentary to comment lines easily
Plug 'jremmen/vim-ripgrep' " vim-ripgrep to search within vim for strings in files
Plug 'puremourning/vimspector', {'do': '~/.config/nvim/plugged/vimspector/install_gadget.py --all'} " vimspector plugin for debugging
Plug 'lilydjwg/colorizer' " color hex colors in css
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " snippets and custom snippets
Plug 'vim-syntastic/syntastic' " show error messages and highlight lines with errors
Plug 'neoclide/coc.nvim', {'branch': 'release'} " CoC - auto complete tool
Plug 'mhinz/vim-startify' " vim startify - fancy start menu when launching vim
Plug 'airblade/vim-rooter' " vim-rooter - allow fzf to search in project's view instead of directory view
Plug 'kevinhwang91/rnvimr' " file explorer - supercharged
Plug 'frazrepo/vim-rainbow' " color parentheses pairs
Plug 'metakirby5/codi.vim' " virtual text evaluation for Python and Node programs 
Plug 'voldikss/vim-floaterm' " open terminal in a floating window
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multi-cursor like vs-code ctrl-d
Plug 'vimwiki/vimwiki' " personal documentaion for note-taking
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'} " preview markdown files in browser
call plug#end()


