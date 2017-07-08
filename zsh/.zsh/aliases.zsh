alias be='bundle exec'
alias code='cd $(gls -d ~/dev/src/*/*/*/.git | xargs -n 1 dirname | peco)'
alias l="gls -lAh --color"
alias la='gls -A --color'
alias ll="gls -l --color"
alias ls="gls -F --color"
alias lt='gls -lArht --color'
alias restartpow="touch ~/.pow/restart.txt"
alias powme='ln -s ${PWD} ~/.pow/${PWD##*/}'

# sounds
alias priceiswrong='afplay ~/.sounds/priceiswrong.mp3'
alias rimshot='afplay ~/.sounds/rimshot.mp3'
alias sadtrombone='afplay ~/.sounds/sadtrombone.mp3'
alias flea='afplay ~/.sounds/spanish_flea.m4a'

# git
alias gd='git diff'
alias git='hub'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative --all"
alias gp='git push origin HEAD'
alias gs='git status -sb'

alias refresh-git-bookmarks="gls -d ~/dev/**/.git | xargs -n 1 dirname | xargs gitup --add"
alias dump-git-repositories="ghq list | xargs -n 1 -I{} bash -c 'cd ~/dev/src/{}; git remote get-url origin' | sed 's/ssh:\/\/git@/https:\/\//g'"
