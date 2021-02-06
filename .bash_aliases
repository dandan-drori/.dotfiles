# common commands
alias o='xdg-open'
alias q='exit' 
alias :q='exit' 
alias c='clear' 

# directories
alias cs='cd ~/IntroToComputerScience/FirstSemester/Homework' 
alias ..='cd ..'
alias rd='rm -rf' 
alias cpvs='cp ~/Projects/C/test_vimspector/.vimspector.json ./' 
alias cpzoom='cat ~/customStartupScripts/zoom.txt | xclip -selection clipboard && echo "Zoom personal meeting link copied to clipboard!"' 
alias cperez='cat ~/customStartupScripts/erez-zoom.txt | xclip -selection clipboard && echo "Erezs zoom personal meeting link copied to clipboard!"' 

# config files
alias bashrc='nvim ~/.bashrc' 
alias aliases='nvim ~/.bash_aliases' 
alias ninit='nvim ~/.config/nvim/init.vim'
alias mdindex='nvim ~/vimwiki/index.md'

# npm / yarn scripts
alias start='yarn start'
alias android='yarn run android'

# git
alias gs='git status'
alias gl='git log --oneline' # save space using --oneline
alias ga='git add .' 
alias gc='git commit -a -m' # commit with a message and add to index
alias gp='git push' 
alias gpu='git pull origin master' # update changes from master 
alias gsb='git checkout' # switch branch
alias gcb='git checkout -b' # create branch
alias gra='git remote add origin' # url to repo..
alias gpf='git push -u origin master' # first push

# C
alias compile='gcc *.c -std=c99' 

# scripts
alias createProject='projectCreate.sh' 
alias md2pdf='md2pdf.sh'
alias createMd='mdCreate.sh'
