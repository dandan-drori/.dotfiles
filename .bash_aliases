# common commands
alias o='xdg-open'
alias q='exit'
alias :q='exit'
alias c='clear'
alias vim='nvim'

# directories
alias cs='cd ~/CS/Y1/S2'
alias ..='cd ..'
alias rd='rm -rf'
alias lc='ls | wc -l' # list count
# alias cpvs='cp ~/Projects/C/test_vimspector/.vimspector.json ./' # legacy - system wide .vimspector.json is present
alias cpzoom='cat ~/customStartupScripts/zoom.txt | xclip -selection clipboard && echo "personal meeting link copied to clipboard!"'
alias cperez='cat ~/customStartupScripts/erez-zoom.txt | xclip -selection clipboard && echo "Erezs meeting link copied to clipboard!"'
alias se="du -a ~/bin/ | grep -vi .git | awk '{print \$2}' | fzf | xargs -r \$EDITOR"
alias ce="du -a ~/.config/nvim | grep -vi .git | grep -vi runtime | grep -vi plugged | awk '{print \$2}' | fzf | xargs -r \$EDITOR"
alias ve="fzf | xargs -r -I % \$EDITOR %"
cls() {
  clear 
  ls
}

# config files
alias bashrc='nvim ~/.bashrc'
alias aliases='nvim ~/.bash_aliases'
alias ninit='nvim ~/.config/nvim/init.vim'

# npm / yarn scripts
alias start='yarn start'
alias android='yarn run android'

# git
alias gs='git status'
alias gl='git log --oneline' # save space using --oneline
alias ga='git add .'
alias gc='git commit -a -m' # commit with a message and add all files to staging area
alias gp='git push'
alias gpu='git pull origin master' # update changes from master
alias gsb='git checkout' # switch branch
alias gcb='git checkout -b' # create branch
alias gra='git remote add origin' # url to repo..
alias gpf='git push -u origin master' # first push

# C
alias compilec='gcc *.c -std=c99'

# Java
alias check='java -jar checkstyle-5.7-all.jar -c biuoop.xml src/*.java'
alias compilej='javac -d bin -cp biuoop-1.4.jar:src src/*.java'
alias runj='java -cp biuoop-1.4.jar:bin src/*.java'
alias intellij='idea.sh'

# scripts
alias createProject='projectCreate.sh'
alias createMd='mdCreate.sh'
alias deleteMd='mdDelete.py'
alias md2pdf='md2pdf.py'
alias opdf='opdf.py'
alias notes='noteTaking.sh'
alias zipj='zip.sh'
alias gym='gym.py'

# tools
alias myip="ifconfig | grep broadcast | awk '{print \$2}'"
alias mystorage="df -h | awk '{if (NR<5 && NR!=3 && NR!=2) print}'"
