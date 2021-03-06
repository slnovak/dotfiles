setopt extended_glob

source ~/.zsh/aliases.zsh
source ~/.zsh/env.zsh
source ~/.zsh/config.zsh
source ~/.zsh/fpath.zsh
source ~/.zsh/path.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/window.zsh
source ~/.zsh/work.zsh

source $ZSH/oh-my-zsh.sh

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit -u
compinit -u

source ~/.zsh/completion.zsh

if [ -f ~/.airbnb.zsh ]; then
    source ~/.airbnb.zsh
fi

if which rbenv > /dev/null; then eval "$(rbenv init - | sed 's/bash/zsh/g')"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
