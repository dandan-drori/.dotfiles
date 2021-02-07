set runtimepath^=~/.config/nvim/runtime runtimepath+=~/.config/nvim/runtime/after
let &packpath = &runtimepath

" color scheme
source $HOME/.config/nvim/colorschemes/gruvbox.vim

" general settings
source $HOME/.config/nvim/settings/rule.vim
source $HOME/.config/nvim/settings/mapping.vim
source $HOME/.config/nvim/settings/fold.vim
source $HOME/.config/nvim/settings/plugins.vim

" plugin configurations
source $HOME/.config/nvim/plugin-configurations/coc.vim
source $HOME/.config/nvim/plugin-configurations/fzf.vim
source $HOME/.config/nvim/plugin-configurations/emmet.vim
source $HOME/.config/nvim/plugin-configurations/syntastic.vim
source $HOME/.config/nvim/plugin-configurations/vimspector.vim
source $HOME/.config/nvim/plugin-configurations/start-screen.vim
source $HOME/.config/nvim/plugin-configurations/ranger.vim
source $HOME/.config/nvim/plugin-configurations/which-key.vim
source $HOME/.config/nvim/plugin-configurations/codi.vim
source $HOME/.config/nvim/plugin-configurations/vim-wiki.vim
source $HOME/.config/nvim/plugin-configurations/instant-md.vim

" make sure background stays transparent after initial nvim open
hi! Normal guibg=NONE ctermbg=NONE
hi! EndOfBuffer guibg=NONE ctermbg=NONE

