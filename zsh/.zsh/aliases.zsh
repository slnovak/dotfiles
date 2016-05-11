alias be='bundle exec'
alias code='cd $(ghq list -p | peco)'
alias l="gls -lAh --color"
alias la='gls -A --color'
alias ll="gls -l --color"
alias ls="gls -F --color"
alias lt='gls -lArht --color'
alias restartpow="touch ~/.pow/restart.txt"

# sounds
alias priceiswrong='afplay ~/.sounds/priceiswrong.mp3'
alias rimshot='afplay ~/.sounds/rimshot.mp3'

# git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative --all"
alias gp='git push origin HEAD'
alias gs='git status -sb'
